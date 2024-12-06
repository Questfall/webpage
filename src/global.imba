# const onresize = do document.documentElement.style.setProperty("--width", "{window.innerWidth}")
# window.addEventListener('resize', onresize)
# onresize!


global css
	html
		overflow-x:hidden
		ff:"Gilroy", sans-serif
		fw: 600
		c:white
		bgc:#000D1B
	# body
	# 	d:vflex jc:center ai:center
	# .app
	# 	d:vflex w:100% ta:center
	.block
		d:vflex jc:center ai:center w:100%
	.vcontent
		w:100% <1500px d:vflex jc:center ai:center gap:0 h:100% pos:relative