export def timeout(ms)
	return new Promise(do(resolve) setTimeout(resolve, ms))

export class Scrolling
	events = []
	element

	def constructor element, bottom = 1
		element = element
		window.addEventListener "scroll", do
			const elem = element.getBoundingClientRect!
			const top = bottom * window.innerHeight - elem.top
			const done = Math.min(Math.max(100 * top / elem.height, 0), 100)
			for event in events
				if event.progress <= done and !event.visible
					event.show! if event.show
					event.visible = true
				elif event.progress >= done and event.visible
					event.hide! if event.hide
					event.visible = false

	def listen event
		return if event.progress is undefined or (event.show !isa Function and event.hide !isa Function)
		event.visible = false
		events.push event
