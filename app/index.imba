import routes from './databases/routes.json'

import { Navbar } from './components/navbar'
import { Footer } from './components/footer'
import { Blog } from './components/blog'

import { Aguacate } from './pages/aguacate'
import { Ayuda } from './pages/ayuda'
import { Escribe } from './pages/escribe'
import { Existe } from './pages/existe'
import { Programa } from './pages/programa'
import { Trabaja } from './pages/trabaja'
import { Agenda } from './pages/agenda'
import { NotFound } from './pages/not-found'

global css @root
	* m:0 p:0
	ff:sans
	--primary:#2E3440
	--blue:#5E81AC
	--link:#B48EAD
	--green:#A3BE8C
	--red:#BF616A
	--yellow:#EBCB8B
	--orange:#D08770
	--shadow:#E5E9F0
	--navheight:4rem

global css
	body c:var(--primary) bgc:cool1
	h1 fs:3rem fw:500 lh:1.5
	h2 fs:2rem fw:500 lh:1.5
	h3 fs:1.5rem fw:400 lh:1.5
	ul ml:1rem
	a td:none c:var(--primary)
	a.active c:var(--link)
	p lh:1.5
	.container max-width:1128px m:0 auto
	.clickable cursor:pointer
	.content min-height:60vh m:1rem auto max-width:960px
		strong fw:600
		a c:var(--link)
		p, h1, h2, h3 mb:1rem
		img d:block mx:auto my:2rem
	.shadow
		shadow:0 0.5em 1em -0.125em var(--shadow), 0 0 0 1px var(--shadow)

tag App
	def router_list
		const router_list = routes.map do |route| route[1]
		router_list.push('/')
		router_list

	<self>
		<Navbar>
		<Aguacate route="/$">
		<Existe route="/existe">
		<Trabaja route="/trabaja">
		<Programa route="/programa">
		<Escribe route="/escribe">
		<Ayuda route="/ayuda">
		<Agenda route="/mentoria">
		unless router_list!.includes(router.path)
			<NotFound>
		<Footer>

imba.mount <App>
