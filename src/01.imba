import {images, ArrowIcon} from './assets.imba'
import {MainButton} from './components/buttons.imba'

export tag Section01 < section
	<self>
		css	
			div
				mt:1rem
				@keyframes fadein
					100% o:1
			.topnav
				d:hflex ai:center jc:center
				bgc:#010D19 h:2rem w:100% p:0 m:0 bdl:0 bdr:0 bdb:0 bdb:1px bs:solid
				border-image: linear-gradient(to left, transparent, #1E345A, transparent) 1
			.menu
				fs:0.4rem c:gray4 mt:0
		<div.topnav>
			<img src=images.logo.url width="{images.logo.width}" height="{images.logo.height}">
			# <div.menu [ml:auto]> "Documentation"

		<div> "The future of Quests is here" 
			css ff:"DM Sans", sans-serif fw:700
		<div> "Existing quest platforms lack security and fair tokenomics. We're fixing that, building a future where quests are a core part of online experiences."
			css fs:0.5rem lh:0.8rem
		<div>
			css d:hflex ai:center jc:center mt:1.5rem
			<MainButton [w:5rem] caption="Whitepaper" link='https://docs.questfall.xyz' icon=ArrowIcon>
			# <MainButton [w:4rem mr:1rem] caption="Invest">
			# <MainButton [w:4rem] caption="Earn">
		<div>
			css mt:1.5rem pos:relative o:0 animation: 0.5s fadein forwards
			<div>
				css pos:absolute bgc:#017598 bxs:0 0 10vw #017598 rd:50% w:100% aspect-ratio:1.34 m:0 o:0 animation: 1s fadein forwards
			<img src=images.sceenshot.url loading="lazy" decoding="asynchronous" width="{images.sceenshot.width}" height="{images.sceenshot.height}">
				css pos:relative zi:1 bd:1px solid #1E345A max-width:100% h:auto
			<div>
				css w:100% bdt:1px solid #1E345A h:0px zi:2 mt:-2rem pos:relative
			