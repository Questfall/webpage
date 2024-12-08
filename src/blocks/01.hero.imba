import {Image} from '../components/media.imba'
import {TextSlider} from '../components/texts.imba'

const files = 
	questfall: 
		path: 'images/questfall.svg'
		w: 162
		h: 42
		alt: 'Questfall'
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

const headers = ['Tokenomics', 'Bot Protection', 'Mining', 'Deflation', 'Fun', 'Decentralization']

export tag Hero < section
	css
		.socials
			d:hflex ai:center max-width:900px gap:80px jc:space-between t:80px pos:absolute
			.link 
				c:#30A5FF d:hflex ai:center fw:500 fs:1rem cursor:pointer
				img	
					mr:0.3em
		.header
			my:auto of:visible min-width:560px
	<self>
		css h:100vh pos:relative
		<div.block>
			css h:74px bdb:#002A65 bgc:#000D1B zi:1
			<Image file=files.questfall>
			<div> "version 0.0.8"
				css fw:500 fs:12px c:gray6 t:24px pos:absolute r:20px
		<div>
			css pos:absolute h:100% w:100% zi:-1
				bg:radial-gradient(circle at 50% 0%, #003069 0%, #000D1B 50%) bgs:1400px 1000px bgr:no-repeat bgp:center top
		<div.vcontent>
			<.socials>
				<div.link @click=window.open('https://x.com/QuestfallHQ', '_blank')>
					<Image file=files.twitter>
					<span> "Twitter"
				<div.link @click=window.open('https://discord.gg/72snKQ66fD', '_blank')>
					<Image file=files.discord>
					<span> "Discord"
				<div.link @click=window.open('https://docs.questfall.xyz', '_blank')>
					<Image file=files.whitepaper>
					<span> "Whitepaper"
			<.header>
				# <div>
				# 	css fs:1.5rem ta:center
				# 	<span> "Quest Platform"
				<div>
					css fs:1.5rem ta:center mb:1em ls:0.2em
					<span> "Quests Reimagined"
				<TextSlider strings=headers>
					css fs:6rem lh:1em ta:center
				<div>
					css bgc:#84084F fw:600 rd:7px ta:center w:fit-content px:1em py:0.2em fs:18px mx:auto mt:3em
					<span> "Coming soon"
				# <span> 'of the future'
				# 	css float:right fs:1.5rem mt:-1.5rem

			
