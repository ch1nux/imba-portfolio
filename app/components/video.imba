export tag Video
	prop video = ""
	prop width = 515
	prop height = 315
	prop title = "YouTube video player"

	<self>
		<iframe
			src=video
			width=width
			height=height
			title=title
			frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen
		>
