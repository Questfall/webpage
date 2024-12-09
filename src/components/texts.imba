import {timeout} from '../common.imba'

export tag TextSlider
	strings = []
	
	def slide count = 0
		count = 0 if count == strings.length
		const lines = strings[count].split(' ')
		$line1.innerText = lines[0]
		# $line1.innerText = strings[count]
		$line2.innerText = lines[1]
		self.flags.add('show')
		await timeout(1000)
		self.flags.remove('show')
		await timeout(1000)
		self.flags.add('hide')
		await timeout(1000)
		self.flags.remove('hide')
		slide(++count)
	
	def mount
		slide!

	css	&.show animation: show 1s ease forwards
	css	&.hide animation: hide 1s ease forwards
	css
		@keyframes 
			show
				0%
					transform: translateY(-50px) transform: translateZ(0)
					opacity: 0
					clip-path: polygon(100% 0, 100% 0, 0 220%, 0 220%)
				100%
					transform: translateY(0) transform: translateZ(0)
					opacity: 1
					clip-path: polygon(100% 0, 100% 220%, 0 220%, 0 -20%)
			hide
				0%
					transform: translateY(0) transform: translateZ(0)
					opacity: 1
					clip-path: polygon(100% 0, 100% 220%, 0 220%, 0 0)
				100%
					transform: translateY(50px) transform: translateZ(0)
					opacity: 0
					clip-path: polygon(100% 0, 100% 0, 0 220%, 0 220%)
				
	<self>
		css lh:0.8em pos:relative
		<p$line1>
			css float:left
		<br>
		<p$line2>
			css float:right