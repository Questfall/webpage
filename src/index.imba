import './global.imba'
import {Section01} from './01.imba'
import {Section02} from './02.imba'


tag App
	<self> # @resize.css(100aw, 100ah)>
		css d:vflex max-width:1920px ta:center
		<Section01>
		<Section02>
			

imba.mount <App>