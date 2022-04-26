import messages from './../databases/messages.json'

import logo from './../assets/avatar400x400.jpg'

import { Firma } from './../components/firma'
import { Saludo } from './../components/saludo'
import { Mensaje } from './../components/mensaje'

export tag Aguacate
	# Rewrite mount method when attach tag component to the DOM
	def mount
		consoleStyles = "color: #A3BE8C; font-family:monospace; font-size: 20px"
		console.clear()
		console.log(
			"%c🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑",
			consoleStyles
		)
		console.log(
			"%c🥑 ASI ME GUSTA, ERES REBELDE COMO YO. ME CAES BIEN 🥑",
			consoleStyles
		)
		console.log(
			"%c🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑",
			consoleStyles
		)

	# Rewrite unmount method when dettach tag component from the DOM
	def unmount
		console.clear()

	<self [h:100vh]>
		<div.container [h:100% d:flex jc:space-around ai:center]>
			<div>
				<h1> <Saludo>
				<h2> <Firma>
				<h3> <Mensaje message_list=messages>
				<p [mt:1rem]> "Esta página no contiene 🥚 de pascua,{<br>}
puedes comprobarlo recargando la página o mirando la consola del navegador 😉"
			<div>
				<img src=logo [w:250px rd:50%]>
