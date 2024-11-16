export tag MainButton
	caption = 'Click me'
	link = '/'
	icon
	
	css
		&
			$back_passive: #FFFFFF # #EFC902 # #69A5FF
			$font_passive: #000000 # #FFFFFF
			$back_active: #28406A # #FFE603
			$font_active: #FFFFFF # #000000

			w:100%
			us:none
			cursor: pointer 
			ecd: 500ms
			pb: 8px
			pt: 10px
			rd: 4px
			fs: 0.5rem fw: 600
			w: 100%
			ta: center
			c: $font_passive
			cursor: pointer 
			bgc: $back_passive
			bd: 1px solid $back_passive
			@hover
				c: $font_active
				bgc: $back_active
				bxs: 0px 0px 10px 0px $back_active
				bd: 1px solid $back_active
		
	<self>
		css d:hflex ai:center jc:center
		<div @click=(window.open(link))> caption
		if icon
			<{icon} [w:0.4rem ml:0.2rem mt:0.1rem]>
