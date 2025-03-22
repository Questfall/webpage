import {Image} from '../components/media.imba'
import {Grid} from '../components/grid.imba'

const files = 
	tree: 
		path: 'images/01fixit/tree.png'
		w: 277
		h: 522
		alt: 'Dead tree'
	warrior:
		path: 'images/01fixit/warrior.png'
		w: 297
		h: 498
		alt: 'Warrior'
	devider: 
		path: 'images/01fixit/devider.png'
		w: 722
		h: 4
		alt: ''

const strings = 
	headers: 
		[
			"The crypto space has drifted from its core values"
			"We are here to fix it"
		]
	texts: 
		[
			"Modern tokenomics of crypto projects, including quest platforms, have shifted from the core principle of publicly owned money, diminishing the fairness that Bitcoin originally stood for."
			"Today, truly fair tokenomics models - apart from Proof of Work - are virtually non-existent, not due to malice, but because designing them is extraordinarily hard."
			"Despite the difficulty, we accepted the challenge and, after several years of dedicated work, developed an innovative approach to tokenomics, which became the cornerstone of Questfall."
		]

export tag Fixit

	<self [mt:-15%]>

		# --------------------------------------
		# block 1
		<div>
			css w:1400px mx:auto bg:linear-gradient(#001734, #00051D) bd:1px solid #00183F rd:8px bxs: 0px -80px 108px 0px #010A14
			<div>
				css d:hflex jc:space-between
				<div>
					css p:80px ls:5 w:1000px
					<div.h3 [lh:80px]> strings.headers[0]
					<Image [mt:60px] file=files.devider>
					<div.h6 [lh:40px mt:60px pr:1em]> strings.texts[0]
				<div [aspect-ratio: {files.tree.w / files.tree.h}]>
					css pos:relative w:350px pr:50px # h:600px
					# <Grid gap=100>
					# 	css pos:absolute w:100% h:100% # t:-8px l:0
					<Image file=files.tree>
						css w:90% mx:auto mt:60px
		
		# --------------------------------------
		# block 1
		<div>
			css w:1400px mx:auto bg:linear-gradient(#001734, #00051D) bd:1px solid #00183F rd:8px bxs: 0px -80px 108px 0px #010A14
			<div>
				css d:hflex jc:space-between
				<div>
					css p:80px ls:5 w:1000px
					<div.h3 [lh:80px]> strings.headers[1]
					<Image [mt:60px] file=files.devider>
					<div.h6 [lh:40px mt:60px pr:1em]> strings.texts[1]
					<div.h6 [lh:40px mt:60px pr:1em]> strings.texts[2]
				<div [aspect-ratio: {files.tree.w / files.tree.h}]>
					css pos:relative w:350px pr:50px # h:600px
					# <Grid gap=100>
					# 	css pos:absolute w:100% h:100% # t:-8px l:0
					<Image file=files.warrior>
						css w:100% mx:auto mt:80px

		# --------------------------------------
		# block 2
		# <div>
		# 	css w:90% >660px <1500px mx:auto mt:4em bg:linear-gradient(#001734, #00051D) bd:1px solid #00183F rd:8px bxs: 0px -80px 108px 0px #010A14
		# 	<div>
		# 		css d:hflex
		# 		<div>
		# 			css p:4em
		# 			<div.h3 [lh:1em]> strings.headers[1]
		# 			<div.h6 [lh:1.4em mt:5% w:80% pr:1em]> strings.texts[1]
		# 		<div [aspect-ratio: {files.warrior.w / files.warrior.h}]>
		# 			css pos:relative w:30% >300px
		# 			<Grid gap=50>
		# 				css pos:absolute t:0 l:0 w:100% # h:100%
		# 			<Image file=files.warrior>
		# 				css w:75% mx:auto mt:4em