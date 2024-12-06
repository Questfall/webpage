
export tag Mining < section
	<self>
		# css bgc:#017598 zi:1
		css
			.visible animation: 2s fadein forwards
		<div>
			css ml:10% mr:10% mt:15rem mb:15rem
			# <div> "Typical approach to Tokenomics is broken" 
			# 	css ff:"DM Sans", sans-serif fs:4rem fw:900 lh:1.2em ml:10% mr:10% tt:uppercase c:gray4
			<div>
				css fs:1.6rem lh:1.2em ml:25% mr:25% mt:2rem c:gray4
				<span> "The typical approach to tokenomics is broken, so we developed" 
			<div @intersect.flag('visible')>
				css fw:700 fs:5rem lh:1em c:white mt:1rem ml:10% mr:10% o:0
				<span> "Deflationary Mining" 
					