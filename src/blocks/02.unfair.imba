import {Image} from '../components/media.imba'
import {Scrolling, timeout} from '../common.imba'

# let scroll

const files = 
	green: 
		path: 'images/02unfair/treegreen.avif'
		w: 160
		h: 112
		alt: 'Green tree'
	red: 
		path: 'images/02unfair/treered.avif'
		w: 160
		h: 112
		alt: 'Red tree'

const texts = 
	header1: "The crypto space has drifted from its core values"
	text1: "Modern tokenomics of crypto projects, including quest platforms, have shifted from the core principle of publicly owned money, diminishing the fairness that Bitcoin originally stood for."
	header2: "We are here to fix it"
	text2: "Today, truly fair tokenomics models - apart from Proof of Work - are virtually non-existent, not due to malice, but because designing them is extraordinarily hard. Despite the difficulty, we accepted the challenge and, after several years of dedicated work, developed an innovative approach to tokenomics, which became the cornerstone of Questfall."

tag Slide
	header = ''
	text = ''
	line = 0.5

	# def mount
	# 	const scroll = new Scrolling(self, line)

	<self>
		css h:40vh w:100% d:vflex jc:flex-end
		<div.h4 [lh:1em]> header
		<div.txt [lh:1.4em mt:5% w:80% pr:1em]> text

export tag Unfair

	def mount
		const scroll = new Scrolling(self, 0.5)

	<self>
		<div>
			css mt:8rem w:100% <600px mx:auto # pos:relative
			<Slide header=texts.header1 text=texts.text1 line=0.3>
				css o:(1 - $scrolled / 100)
			<div>
				css zi:-1 w:100% pos:sticky float:right t:30vh mt:-40vh d:hflex jc:flex-end o:(1 - ($scrolled - 40) / 100)
				<div>
					css d:vflex ai:flex-end h:100% w:20% >60px h:40vh # w:100%
						bg:linear-gradient(transparent, #78062D) bdb:1px solid #FF0048
					<Image file=files.red>
						css w:100% mt:auto
			<div>
				css zi:-1 w:100% pos:sticky float:right t:30vh mt:-40vh d:hflex jc:flex-end
				<div>
					css d:vflex ai:flex-end h:100% w:20% >60px h:40vh o:(($scrolled - 40) / 100)
						bg:linear-gradient(transparent, #01805F) bdb:1px solid #00FF95
					<Image file=files.green>
						css w:100% mt:auto
			<Slide header=texts.header2 text=texts.text2 line=0.7>
				css o:($scrolled / 100) # mt:2em
			
			# <div>
			# 	css h:40vh w:100% d:vflex jc:flex-end o:(1 - $scrolled / 60)
			# 	<div.h4 [lh:1em]> "The crypto space has drifted from its core values"
			# 	<div.txt [lh:1.4em mt:5% w:80% pr:1em]> "Modern tokenomics of crypto projects, including quest platforms, have shifted from the core principle of publicly owned money, diminishing the fairness that Bitcoin originally stood for."
			
			# <div>
			# 	css h:20% mt:20% d:vflex jc:center
			# 	<div.h4 [lh:1em]> "We are here to fix it"
			# 	<div.txt [lh:1.4em mt:5% w:80% pr:1em]> "Today, truly fair tokenomics models - apart from Proof of Work - are virtually non-existent, not due to malice, but because designing them is extraordinarily hard. Despite the difficulty, we accepted the challenge and, after several years of dedicated work, developed an innovative approach to tokenomics, which became the cornerstone of Questfall."

			###
			css mt:20% w:100% <600px mx:auto pos:relative
				d:grid gta:'hone ione' 'tone ione' 'space space' 'header2 image2' 'text2 image2'
			<div.h3 [lh:1em ga:hone]> "The crypto space has drifted from its core values"
			<div.txt [lh:1.4em mt:5% w:80% pr:1em ga:tone]> "Modern tokenomics of crypto projects, including quest platforms, have shifted from the core principle of publicly owned money, diminishing the fairness that Bitcoin originally stood for."
			<div>
				css zi:-1 ga:ione w:20% >60px pos:sticky h:50% t:20% bg:linear-gradient(transparent, #78062D) bdb:1px solid #FF0048
				<div>
					css d:vflex ai:flex-end h:100% # w:100%
					<Image file=files.red>
						css w:100% mt:auto

				
