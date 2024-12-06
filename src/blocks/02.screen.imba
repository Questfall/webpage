import {Image} from '../components/media.imba'
import {Scrolling} from '../common.imba'

const screen = do(name) {path:"images/screenshot/{name}.avif", w:1400, h:1065, alt:'Screenshot part'}

let scroll

tag Part
	name
	progress = 0
	
	def mount
		scroll.listen
			progress: progress
			show: do self.flags.remove('hide').add('show')
			hide: do self.flags.remove('show').add('hide')
	css
		&.show
			y:0 o:1
		&.hide
			y:-100vh o:0
	<self>
		css pos:absolute l:0 t:0 w:100% h:100% ead:1s
		<Image file=screen(name)>
			css w:100% h:auto

export tag Screen

	def mount
		scroll = new Scrolling(self)

	<self>
		css px:5% aspect-ratio: {1400 / 1065}
		<.vcontent>
			<Image file=screen('background')>
			<Part name='logo' progress=40>
			<Part name='menuabg' progress=42.5>
			<Part name='menua' progress=45>
			<Part name='menua1' progress=47.5>
			<Part name='menua2' progress=50>
			<Part name='menua3' progress=52.5>
			<Part name='menubbg' progress=55>
			<Part name='menub' progress=57.5>
			<Part name='menub1' progress=60>
			<Part name='menub2' progress=62.5>
			<Part name='menub3' progress=65>
			<Part name='menub4' progress=67.5>
			<Part name='menucbg' progress=70>
			<Part name='menuc' progress=72.5>
			<Part name='menuc1' progress=65>
			<Part name='menuc2' progress=67.5>
			<Part name='menuc3' progress=70>
			<Part name='menuc4' progress=72.5>
			<Part name='menuc5' progress=75>
			<Part name='menuc6' progress=77.5>
			<Part name='header' progress=80>
			<Part name='card1' progress=82.5>
			<Part name='card2' progress=85>
			<Part name='card3' progress=87.5>
			<Part name='card4' progress=90>
			<Part name='banner' progress=92.5>
			
			
