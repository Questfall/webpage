export tag Image < img
	file
	<self [aspect-ratio: {file.w / file.h}] src=file.path loading="lazy" decoding="asynchronous" alt=file.alt>
