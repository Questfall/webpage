import {images} from '../assets.imba'

export tag Screen < section
	<self>
		css mt:4rem pos:relative ml:6% mr:6% o:0 animation: 0.5s fadein forwards
		<div>
			css pos:absolute bgc:#017598 bxs:0 0 10vw #017598 rd:50% w:100% aspect-ratio:{images.sceenshot.width / images.sceenshot.height} m:0 o:0 animation: 1s fadein forwards
		<img src=images.sceenshot.url loading="lazy" decoding="asynchronous" width="{images.sceenshot.width}" height="{images.sceenshot.height}">
			css pos:relative zi:1 bd:1px solid #1E345A max-width:100% h:auto w:auto d:block
		# <div>
		# 	css w:100% bdt:1px solid #1E345A h:0px zi:2 mt:-2rem pos:relative
