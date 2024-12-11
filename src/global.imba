# const onresize = do document.documentElement.style.setProperty("--width", "{window.innerWidth}")
# window.addEventListener('resize', onresize)
# onresize!

# window.addEventListener 'scroll', do 
#	document.body.style.setProperty('--scroll', "{document.documentElement.scrollTop}px")

global css
	@root
		$base: 16px
		$scale: 1.4
		$h6: ($base * $scale)
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
		fs: $base
		bgc:#000D1B
		scroll-behavior: smooth
		overscroll-behavior: none
		@lt-xl $base:15px $scale:1.375
		@lt-md $base:15px $scale:1.35
		@lt-sm $base:14px $scale:1.325
		@lt-xs $base:14px $scale:1.3
	# body
	# 	d:vflex jc:center ai:center
	# .app
	# 	d:vflex w:100% ta:center
	# .block
	# 	d:vflex jc:center ai:center w:100%
	.h1 fs:$h1
	.h2 fs:$h2
	.h3 fs:$h3
	.h4 fs:$h4
	.h5 fs:$h5
	.h6 fs:$h6
	.txt fs:$base

window.onload = do 
	const lax = require('lax.js')
	lax.init!
	lax.addDriver('scrollY', do return window.scrollY)
	lax.addElements '.lax20',
			scrollY:
				translateY: [
					["elInY", "elCenterY", "elOutY"]
					['screenHeight/20', 0, '-screenHeight/20']
				]
	lax.addElements '.lax16',
			scrollY:
				translateY: [
					["elInY", "elCenterY", "elOutY"]
					['screenHeight/16', 0, '-screenHeight/16']
				]
	lax.addElements '.lax12',
			scrollY:
				translateY: [
					["elInY", "elCenterY", "elOutY"]
					['screenHeight/12', 0, '-screenHeight/12']
				]
	lax.addElements '.lax8',
			scrollY:
				translateY: [
					["elInY", "elCenterY", "elOutY"]
					['screenHeight/8', 0, '-screenHeight/8']
				]
	lax.addElements '.lax4',
			scrollY:
				translateY: [
					["elInY", "elCenterY", "elOutY"]
					['screenHeight/4', 0, '-screenHeight/4']
				]
