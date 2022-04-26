import routes from './../databases/routes.json'

import avatar from "./../assets/avatar-small.png"

export tag Navbar
	css nav
		pos:fixed
		bgc:cool1
		w:100vw
		h:var(--navheight)
		bdb:1px solid var(--shadow)
	css a mx:.8rem

	def title_case word
		word[0].toUpperCase() + word.slice(1)

	<self>
		<nav>
			<div.container [d:flex jc:space-between]>
				<div [mt:.5rem fs:1.5rem d:flex ai:center]>
					<img src=avatar [w:3rem rd:50%]>
					<a route-to='/$' [fw:500]> "El aguacate..."
				<div [mt:.6rem d:flex ai:center]> for route in routes
					<a [fs:1.1rem fw:500 d:inline-block] route-to=route[1]> title_case(route[0])
