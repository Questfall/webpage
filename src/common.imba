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
		const done = Math.min(Math.max(100 * top / elem.height, 0), 100)
		let finished = true
		for event in events
			finished = false if !event.visible
			if event.progress <= done and !event.visible
				event.show! if event.show
				event.visible = true
			elif event.progress >= done and event.visible
				event.hide! if event.hide
				event.visible = false
		
		if onfinish and finished
			onfinish!
			controller.abort!

	def constructor element, bottom = 1
		controller = new AbortController()
		element = element
		bottom = bottom
		window.addEventListener "scroll", scroll.bind(self), {signal: controller.signal}

	def onscroll event
		return if event.progress is undefined or (event.show !isa Function and event.hide !isa Function)
		event.visible = false
		events.push event

