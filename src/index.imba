import './global.imba'
# import {Header} from './blocks/01.header.imba'
# import {Hero} from './blocks/02.hero.imba'
# import {Screen} from './blocks/03.screen.imba'
# import {Mining} from './blocks/04.mining.imba'
# import {Tokenomics} from './blocks/05.tokenomics.imba'

# import {Footer} from './blocks/footer.imba'

import {Header} from './blocks/00.header.imba'
import {Hero} from './blocks/01.hero.imba'
import {Screen} from './blocks/02.screen.imba'
import {Crypto} from './blocks/03.crypto.imba'

tag App < article
	<self>
		css pos:relative d:vflex ai:center
		<Header>
			css h:8vh bgc:#000D1B zi:1 pos:absolute t:0 l:0 r:0
		<Hero.block>
			css h:100vh pt:8vh
		<Screen.block>
		<Crypto.block>
		# <Header>
		# <Hero>
		# <Screen>
		# <Mining>
		# <Tokenomics>

		# <Footer>
			

imba.mount <App>