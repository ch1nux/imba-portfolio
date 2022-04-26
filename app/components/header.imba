export tag Header
	prop color = "primary"
	prop has_image = no
	prop image = ""
	prop title = "Lorem ipsum"
	prop subtitle = "dolor sit amet"

	<self>
		<header [
			h:210px
			w:100vw
			pt:var(--navheight)
			d:flex
			jc:center
			ai:center
			fld:column
			bg:{has_image ? url(image) : "var(--{color})"}
		]>
			<h1 [c:warm0]> title
			<h2 [c:warm0]> subtitle
