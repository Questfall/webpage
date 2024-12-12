import {timeout} from '../common.imba'

export tag TextSlider
	strings = []
	
	def slide count = 0
		count = 0 if count == strings.length
		$container.innerText = strings[count]
		# const lines = strings[count].split(' ')
		# $line1.innerText = lines[0]
		# $line2.innerText = lines[1]
		$container.flags.add('show')
		await timeout(1000)
		$container.flags.remove('show')
		await timeout(1000)
		$container.flags.add('hide')
		await timeout(1000)
		$container.flags.remove('hide')
		slide(++count)
	
	def mount
		slide!

	css	.show animation: show 1s ease forwards
	css	.hide animation: hide 1s ease forwards
	css
		@keyframes 
			show
				0%
					transform: translateY(-50px) # transform: translateZ(0)
					opacity: 0
					clip-path: polygon(110% 0, 110% 0, 0 110%, 0 110%)
				100%
					transform: translateY(0) # transform: translateZ(0)
					opacity: 1
					clip-path: polygon(110% 0, 110% 110%, 0 110%, 0 -10%)
			hide
				0%
					transform: translateY(0) # transform: translateZ(0)
					opacity: 1
					clip-path: polygon(100% 0, 100% 100%, 0 100%, 0 0)
				100%
					transform: translateY(50px) # transform: translateZ(0)
					opacity: 0
					clip-path: polygon(100% 0, 100% 0, 0 100%, 0 100%)
				
	<self>
		<div$container>
			css lh:1em pos:relative h:2em w:100%
			# <div$line1>
			# 	css float:left # l:0 # pos:absolute
			# <div$line2>
			# 	css float:right # r:0 # pos:absolute
