export tag Grid < canvas
	ctx
	gap = 80
	ltc = {x:0, y:0}
	steps = {vert: 0, horz:0}
	lines = {color: 'rgba(255, 255, 255, 0.1)', width: 1}
	dots = {color: '#36BAC9', width: 1}
	zoom = 1

	def prepare
		zoom = parseFloat(window.getComputedStyle(document.documentElement).getPropertyValue("--zoom"))
		width = self.clientWidth
		height = self.clientHeight
		steps = {vert:Math.floor(width / gap), horz: Math.floor(height / gap)}
		# ltc = {x: Math.round((width - steps.vert * gap * zoom) / 2), y: Math.round((height - steps.horz * gap * zoom) / 2)}
		console.log width / zoom

	def draw
		ctx.clearRect(0, 0, width, height)

		ctx.strokeStyle = lines.color
		ctx.lineWidth = lines.width

		# Draw vertical lines
		for i in [0 ... steps.vert + 1]
			ctx.beginPath!
			ctx.moveTo(ltc.x + i * gap, ltc.y)
			ctx.lineTo(ltc.x + i * gap, ltc.y + steps.horz * gap)
			ctx.stroke!

		# Draw horizontal lines
		for i in [0 ... steps.horz + 1]
			ctx.beginPath!
			ctx.moveTo(ltc.x, ltc.y + i * gap)
			ctx.lineTo(ltc.x + steps.vert * gap, ltc.y + i * gap)
			ctx.stroke!

		# Draw dots at intersections
		ctx.fillStyle = dots.color
		for i in [0 ... steps.vert + 1]
			for k in [0 ... steps.horz + 1]
				ctx.beginPath!
				ctx.arc(ltc.x + i * gap, ltc.y + k * gap, dots.width, 0, Math.PI * 2)
				ctx.fill!

	def mount
		ctx = getContext("2d")
		prepare!
		draw!

	<self>
		css w:100% h:100%