import './global.imba'
# import {Header} from './blocks/01.header.imba'
# import {Hero} from './blocks/02.hero.imba'
# import {Screen} from './blocks/03.screen.imba'
# import {Mining} from './blocks/04.mining.imba'
# import {Tokenomics} from './blocks/05.tokenomics.imba'

# import {Footer} from './blocks/footer.imba'

import {Header} from './blocks/00.header.imba'
import {Hero} from './blocks/01.hero.imba'
# import {Screen} from './blocks/02.screen.imba'
import {Unfair} from './blocks/02.unfair.imba'
import {Tokenomics} from './blocks/03.tokenomics.imba'

css
	.block
		w:80% >300px <1500px pos:relative container-type:inline-size mx:10%

tag App
	<self>
		css pos:relative d:vflex ai:center
		<Header>
			css h:6vh zi:1 pos:absolute t:0 l:0 r:0 bgc:#000D1B
		<div>
			css pos:absolute h:100% w:100% mt:6vh zi:-1
				bg:radial-gradient(circle at 50% 0%, #003069 0%, #000D1B 50%) bgs:1400px 1000px bgr:no-repeat bgp:center top
		<Hero.block>
			css pt:6vh
		# <Screen.block>
		<Unfair.block>
		<Tokenomics.block>
			css h:100vh
		# <Header>
		# <Hero>
		# <Screen>
		# <Mining>
		# <Tokenomics>

		# <Footer>
			

imba.mount <App>