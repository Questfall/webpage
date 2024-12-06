tag Page
	speed = 100
	turned = false
	next = do
		return if turned
		setTimeout(&,speed / 2) do 
			self.style.setProperty("z-index", "{count}")
			turned = true
		$page.flags.add('next').remove('back')
		
	back = do
		return if !turned
		setTimeout(&,speed / 2) do 
			self.style.setProperty("z-index", "{size - count}")
			turned = false
		$page.flags.remove('next').add('back')

	count = 0
	size = 0

	def setup 
		turned = data..turned
	
	def mount
		self.style.setProperty("z-index", "{size - count}")

	css
		@keyframes
			next
				from transform:rotateY(0deg)
				to transform:rotateY(-180deg)
			back 
				from transform:rotateY(-180deg)
				to transform:rotateY(0deg) 

		.next animation: var(--speed) next forwards
		.back animation: var(--speed) back forwards

	<self>
		css w:100% h:100% pos:absolute cursor:pointer transform-style:preserve-3d pe:none
		<div$page>
			css pos:relative w:50% l:50% transform-origin:left cursor:pointer transform-style:preserve-3d
			
			<{data.front} @click.next>
				css pos:absolute w:100% h:100% transform:rotateY(0deg) backface-visibility:hidden pe:auto
			<{data.back} @click.back>
				css pos:absolute w:100% h:100% transform:rotateY(180deg) backface-visibility:hidden pe:auto


export tag Book
	pages = [] 
	speed = 500

	def mount
		self.style.setProperty("--speed", "{speed}ms")

	<self>
		css h:100% w:100%
		<div>
			css h:100% w:100% pos:relative perspective:3000px transform-style:preserve-3d
			
			for page, i in pages
				<Page data=page speed=speed count=i size=pages.length>		