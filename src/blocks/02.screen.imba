import {Image} from '../components/media.imba'
import {Scrolling, timeout} from '../common.imba'

const screen = do(name) {path:"images/screenshot/{name}.webp", w:1400, h:1065, alt:'Screenshot part'}

let scroll

const files = 
	background:
		path: "images/screenshot/background.avif"
		w:1400
		h:1065
	header:
		path: "images/screenshot/header.avif"
		w:1149
		h:64
	logo:
		path: "images/screenshot/logo.avif"
		w:250
		h:64
	mining:
		path: "images/screenshot/mining.avif"
		w:250
		h:237
	spaces:
		path: "images/screenshot/spaces.avif"
		w:250
		h:281
	infrastructure:
		path: "images/screenshot/infrastructure.avif"
		w:250
		h:488
	quest1:
		path: "images/screenshot/quest1.avif"
		w:900
		h:222
	quest2:
		path: "images/screenshot/quest2.avif"
		w:900
		h:222
	quest3:
		path: "images/screenshot/quest3.avif"
		w:900
		h:222
	quest4:
		path: "images/screenshot/quest4.avif"
		w:900
		h:222
	banner:
		path: "images/screenshot/banner.avif"
		w:180
		h:922

tag Part
	name
	progress = 0
	optimized = false
	file
	
	def setup 
		file = files[name]
		file.alt = name
		
	def mount
		scroll.onscroll
			progress: progress
			show: do self.flags.add('show')
	css
		&.show
			animation: show 1s forwards
			@keyframes show
				0% o:0 # transform: translateX(100vh) translateY(-200vw)
				100% o:1 # transform: translateX(0) translateY(0)
	<self>
		css pos:absolute will-change:transform # l:0 t:0 w:100% h:100%
			o:0 # transform: translateX(100vh) translateY(-200vw) 
			
		<Image file=file>
			css w:100% h:auto
``
export tag Screen
	finished = false

	def mount
		scroll = new Scrolling(self)
		scroll.onfinish = do 
			$container.flags.add('basic').remove('perspective')
			await timeout(1000)
			finished = true

	def hover e
		return if !finished
		# console.log "y:{e.offsetY}, x:{e.offsetX}"


	# css
	# 	.perspective
	# 		transform: perspective(2000px) rotateY(15deg) rotateZ(-15deg) rotateX(55deg) scale(0.7)
	# 	.basic
	# 		animation: basic 1s forwards
	# 		@keyframes basic
	# 			0% transform: perspective(2000px) rotateY(15deg) rotateZ(-15deg) rotateX(55deg) scale(0.7)
	# 			99.99% transform: perspective(2000px) rotateY(0deg) rotateZ(0deg) rotateX(0deg) scale(1)
	# 			100% transform: perspective(0)
	
	<self [transform-style:preserve-3d]=!finished>
		css aspect-ratio:{1400 / 1065} will-change:transform px:5% # ofx:hidden
		<div$container .perspective @mousemove=hover>
			css will-change:transform pos:relative w:100% h:100%
			<Part name='background' progress=20>
				css t:0 w:100% # l:0
			<Part name='logo' progress=25>
				css t:0 w:18% l:0
			<Part name='header' progress=30>
				css t:0 w:82% r:0
			# <Part name='top' progress=35>
			<Part name='mining' progress=40>
				css t:5% w:17.9% l:0
			<Part name='quest1' progress=45>
				css t:11% w:64.4% l:19.4%
			<Part name='spaces' progress=50>
				css t:25% w:17.9% l:0
			<Part name='quest2' progress=55>
				css t:30.6% w:64.4% l:19.4%
			<Part name='quest3' progress=60>
				css t:50.2% w:64.4% l:19.4%
			<Part name='infrastructure' progress=65>
				css t:48.7% w:17.9% l:0
			<Part name='quest4' progress=70>
				css t:69.8% w:64.4% l:19.4%
			<Part name='banner' progress=75>
				css t:11% w:12.78% l:85.6%
			
			
