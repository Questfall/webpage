import {Image} from '../components/media.imba'
import {TextSlider} from '../components/texts.imba'

const files = 
	twitter: 
		path: 'images/01hero/twitter.svg'
		w: 15
		h: 16
		alt: 'Twitter'
	discord: 
		path: 'images/01hero/discord.svg'
		w: 22
		h: 18
		alt: 'Discord'
	whitepaper: 
		path: 'images/01hero/whitepaper.svg'
		w: 15
		h: 15
		alt: 'Whitepaper'
	screenshot:
		path: 'images/01hero/screenshot.avif'
		w: 1280
		h: 973
		alt: 'Questfall screenshot'

const headers = ['Fair Mining', 'Bot Defence', 'Token Burning', 'RPG System']

export tag Hero
	css
		.link 
			cursor:pointer d:hflex ai:center jc:center h:(1.5 * $base) lh:(1.5 * $base)
			img
				bd:transparent h:100% mr:0.4em
			span
				bd:transparent h:100%
	<self>
		<div>
			css d:hflex ai:center jc:space-around mt:12cqh mx:auto
				w:clamp(300px,100%,500px) gap:clamp(10px, 10cqw, 100px)
				c:#30A5FF fw:500 fs:$base
			<div.link @click=window.open('https://x.com/QuestfallHQ', '_blank')>
				<Image file=files.twitter>
				<span> "Twitter"
			<div.link @click=window.open('https://discord.gg/72snKQ66fD', '_blank')>
				<Image file=files.discord>
				<span> "Discord"
			<div.link @click=window.open('https://docs.questfall.xyz', '_blank')>
				<Image file=files.whitepaper>
				<span> "Whitepaper"
		<div>
			css of:visible mt:12cqh # pos:sticky t:0 # min-width:560px
			<div.h5> "New Era of Quests"
				css ta:center mx:10% ls:0.05em
				# <span> "Quests Reimagined"
				# <span> "New Era for Quests"
			<TextSlider.h2 strings=headers>
				css lh:1em ta:center mt:0.2em mx:auto w:100% # w:clamp(300px, 100%, 550px) # d:block
			# <div>
			# 	css bgc:#84084F fw:600 fs:$h5 h:1.7em lh:1.7em bd:transparent d:hflex jc:center ai:center rd:0.4em ta:center mx:auto px:1.4em w:fit-content # aspect-ratio:6 lh:1.8em py:auto 
			# 	<span> "Coming soon"
			# 		css h:100% lh:1.6em
			<Image file=files.screenshot>
				css w:100% mt:8rem

		
