import './global.imba'
import {Header} from './blocks/01.header.imba'
import {Hero} from './blocks/02.hero.imba'
import {Screen} from './blocks/03.screen.imba'
import {Mining} from './blocks/04.mining.imba'
import {Tokenomics} from './blocks/05.tokenomics.imba'

import {Footer} from './blocks/footer.imba'


tag App
	<self>
		css d:vflex max-width:1920px ta:center
		<Header>
		<Hero>
		<Screen>
		<Mining>
		<Tokenomics>

		<Footer>
			

imba.mount <App>