import {Image} from '../components/media.imba'
import {TextSlider} from '../components/texts.imba'

const files = 
	twitter: 
		path: 'images/twitter.svg'
		w: 15
		h: 16
		alt: 'Twitter'
	discord: 
		path: 'images/discord.svg'
		w: 22
		h: 18
		alt: 'Discord'
	whitepaper: 
		path: 'images/whitepaper.svg'
		w: 15
		h: 15
		alt: 'Whitepaper'

const headers = ['True Mining', 'Honest Rules', 'Anti Cheat', 'Lasting Growth', 'Endless Thrill']

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
			css pos:absolute h:100% w:100% zi:-1
				bg:radial-gradient(circle at 50% 0%, #003069 0%, #000D1B 50%) bgs:1400px 1000px bgr:no-repeat bgp:center top
		<div>
			css d:hflex ai:center jc:space-around mt:12cqh mx:auto
				w:clamp(300px,80cqw,500px) gap:clamp(10px, 10cqw, 100px)
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
			css of:visible mt:12cqh # min-width:560px
			<div>
				css fs:$h5 ta:center ls:0.2em
				<span> "Quests Reimagined"
			<TextSlider strings=headers>
				css fs:$h1 ta:center mb:1.2em mt:0.4em mx:auto w:clamp(300px, 80%, 450px)
			<div>
				css bgc:#84084F fw:600 fs:$h5 h:1.7em lh:1.7em bd:transparent d:hflex jc:center ai:center rd:0.4em ta:center mx:auto px:1.4em w:fit-content # aspect-ratio:6 lh:1.8em py:auto 
				<span> "Coming soon"
					css h:100% lh:1.6em
	
			
