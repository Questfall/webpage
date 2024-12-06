import {ArrowIcon} from '../assets.imba'
import {ButtonMain} from '../components/buttons.imba'

export tag Hero < section
	<self>
		<div> "The future of quests is here" 
			css ff:"DM Sans", sans-serif fw:700 lh:1.2em fs:3rem mt:3rem ml:10% mr:10%
		<div> "A perfect quest platform should have fair tokenomics, solid anti-bot protection, and an RPG system. None exist. We're fixing that." 
			css fs:1.5rem lh:1.6em mt:3rem ml:25% mr:25%
			
		<div>
			css d:hflex ai:center jc:center mt:4rem
			<ButtonMain [w:15rem] caption="Whitepaper" link='https://docs.questfall.xyz' icon=ArrowIcon>