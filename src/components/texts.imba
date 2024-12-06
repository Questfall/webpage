import {timeout} from '../common.imba'

export tag TextSlider
	strings = []
	
	def slide count = 0
		count = 0 if count == strings.length
		$header.innerText = strings[count]
		$header.flags.add('show')
		await timeout(1000)
		$header.flags.remove('show')
		await timeout(1000)
		$header.flags.add('hide')
		await timeout(1000)
		$header.flags.remove('hide')
		slide(++count)
	
	def mount
		slide!

	css	.show animation: show 1s ease forwards
	css	.hide animation: hide 1s ease forwards
	css
		@keyframes 
			show
				0%
					transform: translateY(-50px)
					opacity: 0
					clip-path: polygon(100% 0, 100% 0%, 0 100%, 0 100%)
				100%
					transform: translateY(0)
					opacity: 1
					clip-path: polygon(100% 0, 100% 100%, 0 100%, 0 0%)
			hide
				0%
					transform: translateY(0)
					opacity: 1
					clip-path: polygon(100% 0, 100% 100%, 0 100%, 0 0%)
				100%
					transform: translateY(50px)
					opacity: 0
					clip-path: polygon(100% 0, 100% 0%, 0 100%, 0 100%)
				
	<self>
		<p$header>
		#	css o: 0
	# 	# clip-path: polygon(100% 0, 100% 100%, 0 100%, 0 80%)
	# 	# transform: translateY(-50px)
	# 	# opacity: 0
