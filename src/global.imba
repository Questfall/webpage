# const onresize = do document.documentElement.style.setProperty("--width", "{window.innerWidth}")
# window.addEventListener('resize', onresize)
# onresize!


global css
	html
		overflow-x:hidden
		ff:Montserrat, sans-serif
		c:white
		bgc:#000D1A
		# fs:calc(100vw / $width * 10)
		# fs:calc(100vh / 1536 * 10)
		# @xl fs:calc(100vh / 1280 * 10)
		# @md fs:calc(100vh / 767 * 10)
		# fs:calc(100vw / 100)
		# fs:58px # fs@lt-xl:10px fs@lt-md:46px
		fs:1rem
		
		# lh:0.7rem
		# px:4rem
		@lt-xl
			fs:0.9rem
			# px:4rem
		@lt-md
			fs:0.8rem
			# px:2.5rem
			# lh:3rem
		@lt-sm fs:0.7rem
		@lt-xs fs:0.6rem
		
	body
		d:vflex jc:center ai:center
		lh:2em
		# px:2rem
		m:0
		# fs:1.6rem lh:2.6rem fw:300
		# px:5rem
		# px:50aw
		@keyframes 
			fadein
				100% o:1
	
	# article
	# 	px:50aw
		
		
	# section
	#	# fs:1.2rem lh:2rem