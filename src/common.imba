export def timeout(ms)
	return new Promise(do(resolve) setTimeout(resolve, ms))

export class Scrolling
	events = []
	element
	bottom
	onfinish
	controller

	def scroll
		const elem = element.getBoundingClientRect!	
		const top = bottom * window.innerHeight - elem.top
		const progress = Math.min(Math.max(100 * top / elem.height, 0), 100)
		element.style.setProperty('--scrolled', progress)
		milestones(progress)

	def constructor element, bottom = 1
		controller = new AbortController()
		element = element
		bottom = bottom
		window.addEventListener "scroll", scroll.bind(self), {signal: controller.signal}

	def milestone event
		return if event.progress is undefined or (event.show !isa Function and event.hide !isa Function)
		event.visible = false
		events.push event
	
	def milestones progress
		return if !events.length

		let finished = true
		for event in events
			finished = false if !event.visible
			if event.progress <= progress and !event.visible
				event.show! if event.show
				event.visible = true
			elif event.progress >= progress and event.visible
				event.hide! if event.hide
				event.visible = false
		
		if onfinish and finished
			onfinish!
			controller.abort!

