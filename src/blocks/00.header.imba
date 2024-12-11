import {Image} from '../components/media.imba'

const files = 
	questfall: 
		path: 'images/00header/questfall.svg'
		w: 162
		h: 42
		alt: 'Questfall'

export tag Header
	<self>
		css d:hflex ai:center jc:center
		<Image file=files.questfall>
			css h:70%
		<div> "version 0.1.6"
			css fw:500 fs:12px c:gray6 r:20px my:auto pos:absolute