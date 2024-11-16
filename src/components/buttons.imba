export tag MainButton
	caption = 'Click me'
	link = '/'
	
	css
		&
			$back_passive: #EFC902 # #69A5FF
			$font_passive: #000000 # #FFFFFF
			$back_active: #FFE603
			$font_active: #000000

			w:100%
			us:none
			div
				cursor: pointer 
				ecd: 500ms
				pb: 5px
				pt: 7px
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
		<div @click=(window.open(link))> caption
