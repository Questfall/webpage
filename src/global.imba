# const onresize = do document.documentElement.style.setProperty("--width", "{window.innerWidth}")
# window.addEventListener('resize', onresize)
# onresize!

# window.addEventListener 'scroll', do 
#	document.body.style.setProperty('--scroll', "{document.documentElement.scrollTop}px")

global css
	@root
		$base: 16px
		$scale: 1.5
		$h6: $base
		$h5: ($h6 * $scale)
		$h4: ($h5 * $scale)
		$h3: ($h4 * $scale)
		$h2: ($h3 * $scale)
		$h1: ($h2 * $scale)
	html
		overflow-x:hidden
		ff:"Gilroy", sans-serif
		fw: 600
		c:white
		bgc:#000D1B
		scroll-behavior: smooth
		overscroll-behavior: none
		@lt-xl $base:15px $scale:1.46
		@lt-md $base:15px $scale:1.44
		@lt-sm $base:14px $scale:1.42
		@lt-xs $base:14px $scale:1.4
	# body
	# 	d:vflex jc:center ai:center
	# .app
	# 	d:vflex w:100% ta:center
	# .block
	# 	d:vflex jc:center ai:center w:100%
	.block
		w:100% >300px <1500px pos:relative container-type:inline-size