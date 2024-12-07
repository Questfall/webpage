import {Image} from '../components/media.imba'
import {Scrolling} from '../common.imba'

const screen = do(name) {path:"images/screenshot/{name}.webp", w:1400, h:1065, alt:'Screenshot part'}

let scroll

tag Part
	name
	progress = 0
	
	def mount
		scroll.onscroll
			progress: progress
			show: do self.flags.add('show')
			# hide: do self.flags.remove('show').add('hide')
	css
		&.show
			animation: show 1s forwards
			@keyframes show
				0% o:0 transform: translateX(100vh) translateY(-200vw)
				100% o:1 transform: translateX(0) translateY(0)
		# &.hide
		# 	y:-100vh o:0
	<self>
		css o:0 transform: translateX(100vh) translateY(-200vw) 
			pos:absolute will-change:transform # l:0 t:0 w:100% h:100%
			
		<Image file=screen(name)>
			css w:100% h:auto

export tag Screen
	finished = false

	def mount
		scroll = new Scrolling(self)
		scroll.onfinish = do 
			$container.flags.add('basic').remove('perspective')
			finished = true
	
	def hover e
		return
		console.log e
		return if !finished

	css
		.perspective
			transform: perspective(2000px) rotateY(15deg) rotateZ(-15deg) rotateX(55deg) scale(0.7)
		.basic
			animation: basic 1s forwards
			@keyframes basic
				0% transform: perspective(2000px) rotateY(15deg) rotateZ(-15deg) rotateX(55deg) scale(0.7)
				100% transform: perspective(2000px) rotateY(0deg) rotateZ(0deg) rotateX(0deg) scale(0.9)
	<self>
		css aspect-ratio:{1400 / 1065} transform-style:preserve-3d will-change:transform
		<div$container .vcontent .perspective @mousemove=hover>
			css will-change:transform
			# <Image file=screen('background')>
			#	css y:40px
			<Part name='background' progress=18>
			<Part name='logo' progress=20>
			<Part name='header' progress=22>
			<Part name='top' progress=24>
			
			# <Part name='menuabg' progress=26>
			<Part name='menua' progress=28>
			# <Part name='menua1' progress=30>
			# <Part name='menua2' progress=32>
			# <Part name='menua3' progress=34>
			<Part name='card1' progress=36>

			# <Part name='menubbg' progress=38>
			<Part name='menub' progress=40>
			# <Part name='menub1' progress=42>
			# <Part name='menub2' progress=44>
			# <Part name='menub3' progress=46>
			# <Part name='menub4' progress=48>
			<Part name='card2' progress=50>

			<Part name='card3' progress=52>
			# <Part name='menucbg' progress=54>
			<Part name='menuc' progress=56>
			# <Part name='menuc1' progress=58>
			# <Part name='menuc2' progress=60>
			# <Part name='menuc3' progress=62>
			# <Part name='menuc4' progress=64>
			# <Part name='menuc5' progress=66>
			# <Part name='menuc6' progress=68>
			
			<Part name='card4' progress=70>
			<Part name='banner' progress=72>
			
			
