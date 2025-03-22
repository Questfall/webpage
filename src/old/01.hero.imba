import {Image} from '../components/media.imba'
import {TextSlider} from '../components/texts.imba'
import {Grid} from '../components/grid.imba'

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
	telegram: 
		path: 'images/01hero/telegram.svg'
		w: 15
		h: 15
		alt: 'Telegram'
	screenshot:
		path: 'images/01hero/screenshot.avif'
		w: 1189
		h: 872
		alt: 'Questfall screenshot'
	questfall: 
		path: 'images/00header/questfall.svg'
		w: 162
		h: 42
		alt: 'Questfall'

const slider = ['Fair Mining', 'Bot Defense', 'Token Burning', 'RPG System']

export tag Hero
	css
		.fixed w:100% # >660px <1500px mx:auto #  clamp(300px,80%,1500px)
		.link 
			cursor:pointer d:hflex ai:center jc:center h:(1.5 * $base) lh:(1.5 * $base)
			img
				bd:transparent h:100% mr:0.4em
			span
				bd:transparent h:100%
	
	<self>
		css scale:$ratio
		# ------------------------------------------------------------
		# header
		<div>
			css h:78px d:hflex ai:center jc:center
			<Image file=files.questfall>
				css h:41px
			<div> "version 0.1.9"
				css fw:500 fs:12px c:gray6 r:20px my:auto pos:absolute
			<div>
				css zi:1 pos:absolute t:79px l:0 r:0 w:80% h:1px mx:auto bg:radial-gradient(#132436 0%, transparent 55%)
		
		# ------------------------------------------------------------
		# links
		<div>
			css d:hflex ai:center jc:space-around mt:12cqh px:10%
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
			<div.link @click=window.open('https://telegram.com', '_blank')>
				<Image file=files.telegram>
				<span> "Telegram"
		
		###
		# ------------------------------------------------------------
		# text slider
		<div.fixed>
			css of:visible mt:20cqh pos:relative # pos:sticky t:0 # min-width:560px
			<div.h5> "New Era of Quests"
				css ta:center mx:10% ls:0.05em
			<TextSlider.h2 strings=slider>
				css lh:1em ta:center mt:0.2em mx:auto w:100% # w:clamp(300px, 100%, 550px) # d:block
			<Grid>
				css pos:absolute t:0 w:80% mt:-10cqh h:18em mx:auto l:50% x:-50%
		
		# ------------------------------------------------------------
		# screenshot
		<Image.fixed file=files.screenshot>
			css scale:0.8 # mt:-6cqh # my:5cqh 
		# <div>
		# 	css pos:absolute w:100% h:100% l:-10px t:0 bd:10px solid rgba(20,53,93,0.5) rd:10px m:10px
		
		# ------------------------------------------------------------
		#  backlight
		<div>
			css pos:absolute w:100% >1400px t:78px zi:-1 h:100% l:50% rdt:50% x:-50%
				bg:radial-gradient(#0261C0 0%, #001326 50%, transparent 65%) 
		
