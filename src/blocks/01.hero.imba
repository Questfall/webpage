import {Image} from '../components/media.imba'
import {TextSlider} from '../components/texts.imba'

const files = 
	questfall: 
		path: 'images/questfall.avif'
		w: 162
		h: 42
		alt: 'Questfall'
	twitter: 
		path: 'images/twitter.avif'
		w: 15
		h: 16
		alt: 'Twitter'
	discord: 
		path: 'images/discord.avif'
		w: 22
		h: 18
		alt: 'Discord'
	whitepaper: 
		path: 'images/whitepaper.avif'
		w: 15
		h: 15
		alt: 'Whitepaper'

const headers = ['Quest Platform', 'Tokenomics', 'Bot Protection', 'Entertainment']

export tag Hero < section
	css
		.socials
			d:hflex ai:center max-width:900px gap:80px jc:space-between mt:80px # pos:absolute
			.link 
				c:#30A5FF d:hflex ai:center fw:500 fs:0.8rem cursor:pointer
				img	
					mr:0.3em
				span 
					pt:0.1rem
		.header
			my:auto of:visible min-width:560px
	<self>
		css h:100vh pos:relative
		<div.block>
			css h:74px bdb:#002A65 bgc:#000D1B zi:1
			<Image file=files.questfall>
		<div>
			css pos:absolute h:100% w:100% zi:-1
				bg:radial-gradient(circle at 50% 0%, #003069 -20%, #000D1B 80%) bgs:cover
		<div.vcontent>
			<div> "version 0.0.1"
				css fw:500 fs:12px c:gray4
			<.socials>
				<div.link>
					<Image file=files.twitter>
					<span> "Twitter"
				<div.link>
					<Image file=files.discord>
					<span> "Discord"
				<div.link>
					<Image file=files.whitepaper>
					<span> "Whitepaper"
			<.header>
				<span> "The innovative"
					css fs:1.5rem
				<br>
				<TextSlider strings=headers>
					css fs:5rem lh:1em ta:center
				<br>
				<span> 'of the future'
					css float:right fs:1.5rem mt:-1.5rem

			
