import './global.imba'
# import {Header} from './blocks/01.header.imba'
# import {Hero} from './blocks/02.hero.imba'
# import {Screen} from './blocks/03.screen.imba'
# import {Mining} from './blocks/04.mining.imba'
# import {Tokenomics} from './blocks/05.tokenomics.imba'

# import {Footer} from './blocks/footer.imba'

import {Hero} from './blocks/00.hero.imba'
# import {Screen} from './blocks/02.screen.imba'
import {Fixit} from './blocks/01.fixit.imba'
import {Tokenomics} from './blocks/03.tokenomics.imba'

css
	.block w:100% pos:relative # container-type:inline-size # mx:auto

tag App
	<self>
		css zoom:$zoom 
		# css w:100% d:vflex ai:center
		# css pos:relative d:vflex ai:center
		# <Header>
		# 	css zi:1 pos:absolute t:0 l:0 r:0 bgc:#000D1B
		# <div>
		# 	css pos:absolute h:100% w:100% mt:6vh zi:-1
		# 		bg:radial-gradient(circle at 50% 0%, #003069 0%, #010A14 50%) bgs:1400px 1000px bgr:no-repeat bgp:center top
		<Hero.block>
		# <div>
		# 	css pos:absolute h:100% w:100% mt:6vh zi:-1
		# 		bg:radial-gradient(circle at 50% 100cqh, #0261C0 0%, #000A14 80%) bgr:no-repeat bgp:center center
		#	css pt:6vh
		# <Screen.block>
		<Fixit.block>
		# <Tokenomics.block>
		# 	css h:100vh
		# <Header>
		# <Hero>
		# <Screen>
		# <Mining>
		# <Tokenomics>

		# <Footer>
			

imba.mount <App>