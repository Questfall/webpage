import {images} from '../assets.imba'

export tag Header < section
	<self>
		css 
			d:hflex ai:center jc:center
			bgc:#010D19 h:6rem w:100% p:0 m:0 bdl:0 bdr:0 bdb:0 bdb:1px bs:solid
			border-image: linear-gradient(to left, transparent, #1E345A, transparent) 1
			
		<img src=images.logo.url width="{images.logo.width}" height="{images.logo.height}">
