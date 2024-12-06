import './global.imba'
# import {Header} from './blocks/01.header.imba'
# import {Hero} from './blocks/02.hero.imba'
# import {Screen} from './blocks/03.screen.imba'
# import {Mining} from './blocks/04.mining.imba'
# import {Tokenomics} from './blocks/05.tokenomics.imba'

# import {Footer} from './blocks/footer.imba'

import {Hero} from './blocks/01.hero.imba'
import {Screen} from './blocks/02.screen.imba'
import {Crypto} from './blocks/03.crypto.imba'

tag App < article
	<self.app>
		<Hero.block>
		<Screen.block>
		<Crypto.block>
		# <Header>
		# <Hero>
		# <Screen>
		# <Mining>
		# <Tokenomics>

		# <Footer>
			

imba.mount <App>