export tag Tokenomics < section
	# <self>
	# 	css bgc:#000D1A h:40rem zi:2 w:100% mt:0
	<self>
		css h: 100% w:100%
		<DoubleFlipLayout$pages>
			css bgc: #BCDCF0
			
			# -----------------------------------
			# Cover left
			# -----------------------------------
			<div slot='left'>
				css pl:60px pt:40px h:100%
					bg: linear-gradient(135deg, #1A5274, #133A53 50%, #0B2332 100%)
				<span> 'Gambling'
					css c:#FFFFFF fs:30px fw:500
				<br>
				<span> 'Revolution'
					css c:#FFFFFF fs:40px fw:600 lh:40px
				<div>
					css tt:uppercase fs:12px lh:30px fw:500 ls:1px mt:75px c:#8BC2E5 # c:#6E9BFF
					<span> 'Engaging games'
					<br>		
					<span> 'Customisable math'
					<br>	
					<span> 'Detailed analytics'
					<br>	
					<span> 'Agents distribution'
					<br>	
					<span> 'Modern technologies'
					<br>	
					<span> 'Plenty of languages'
					<br>	
					<span> 'Robust security'
					<br>	
					<span> 'Affordable prices'
				<div> 'iFastBet'
					css c:#FFFFFF fs:16px lh:30px fw:600 ls:1px mt:80px
			
			# -----------------------------------
			# Login page
			# -----------------------------------
			<div slot='front'>
				css bgc:white h:100% w:500px
				<div>
					css pl:60px pr:60px pt:80px pb:80px
					<div>
						css fs:24px fw:500 mb:20px
						<span> 'Welcome to '
						<span> 'iFastBet'
							css fw:600 c:#5F63D3  # #4F46E5 # #3983DD # c:#3983DD
					<div> 'Login to access all statistics and operations of your branches in your personal Admin panel.'
						css fs:14px # pb:20px
					<div>
						css d:flex fld:column jc:center fs:14px ai: center mt: 25px
						<div> 'Have an invintation code?'
							css mt: 20px
					<div @click=$pages.flip [c:black]> "Flip"
				<div>
					css bgc:rgb(0, 0, 0, 0.05) p:45px d:flex jc:center
					<div>
						css d:flex fld:column jc:center fs:14px
						<div>
							<span> 'By using the system you agree with the terms of usage.'
							<br>
							
			
			# -----------------------------------
			# Register page
			# -----------------------------------
			<div slot='back'>
				css bgc:white h:100%
				<div>
					<div @click=$pages.unflip> 'Signup!'

			# -----------------------------------
			# Cover right
			# -----------------------------------
			<div slot='right'>
				css h:100%
					bg: linear-gradient(-135deg, #1A5274, #133A53 50%, #0B2332 100%)
				<div>
					<div> 'Right cover'

export tag DoubleFlipLayout
	prop panes = {
		left: 500
		right: 500
		height: 600
	}
	prop highlight = false
	prop flipped = false
	
	def flip
		flipped = true
	
	def unflip
		flipped = false

	css
		.shadow
			w:100% h:100% pos:absolute t:0 pe:none
		.left
			bg: linear-gradient(305deg, rgba(0,0,0,0.2) 0%, rgba(0,0,0,0.01) 25%, rgba(0,0,0,0) 100%);
		.right
			bg: linear-gradient(55deg, rgba(0,0,0,0.2) 0%, rgba(0,0,0,0.01) 25%, rgba(0,0,0,0) 100%);
		.page
			pos:relative w:100% h:100% ead:1000ms backface-visibility:hidden
		

	<self [bgc:blue4]=highlight>
		css h: 100% w: 100% m: 0 p: 0 of:hidden
		<section>
			css h: 100% w: 100%	d: grid 
				gtc: 1fr auto 1fr 
				gtr: 1fr auto 1fr 
				gta: "head head head" "left pane right" "foot foot foot"
			
			<header>
				css ga:head
			
			<aside>
				css ga:left h:{panes.height}px
			
			<section>
				css h:100% w:100% ga:pane d:flex
					bxs: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px

				<article> 
					css perspective:3000px h:{panes.height}px w:{panes.left}px
					
					<div$left [bgc:orange4]=highlight>
						css w:100% h:100% pos:absolute
						<slot name="left">
						<div.shadow.left>

					<div$back.page [bgc:orange2]=highlight [transform: none]=flipped>
						css transform-origin:right transform: rotateY(180deg)
						<slot name="back">
						<div.shadow.left>

				<article> 
					css perspective:3000px h:{panes.height}px w:{panes.right}px
					
					<div$right [bgc:orange4]=highlight>
						css w:100% h:100% pos:absolute
						<slot name="right">
						<div.shadow.right>

					<div$front.page [bgc:orange3]=highlight [transform: rotateY(-180deg)]=flipped>
						css transform-origin:left transform: rotateY(0deg)
						<slot name="front">
						<div.shadow.right>
				
			<aside>
				css ga:right h:{panes.height}px
			<footer>
				css ga:foot