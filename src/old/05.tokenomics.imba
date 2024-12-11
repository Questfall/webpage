import {Book} from '../components/book.imba'
import {images} from '../assets.imba'

tag Back0
	<self> "Two"
		css bgc:yellow6 h:100px

tag Front1
	<self> "Three"
		css bgc:pink4 h:100px

tag Back1
	<self> "Four"
		css bgc:pink6 h:100px

tag Front2
	<self> "Five"
		css bgc:indigo4 h:100px

tag Back2
	<self> "Six"
		css bgc:indigo6 h:100px

const pages = [
	{
		front: 
			# <img src=images.dummiesf.url  width="{images.dummiesf.width}" height="{images.dummiesf.height}" [pos:relative max-width:400px w:60% h:auto w:auto d:block]>
			<div>
				css bgi: {images.dummiesf.url} h:500px bgs: cover
		back: 
			<div>
				css h:500px bgc:yellow
				<span> "Deflationary Mining"
				<br>
				<span> ""
		turned: false
	}
	{
		front: Front1
		back: Back1
		turned: false
	}
	{
		front: Front2
		back: Back2
		turned: false
	}
]

export tag Tokenomics < section
	<self>
		css ml:20% mr:20%
		<Book pages=pages [h:300px]>