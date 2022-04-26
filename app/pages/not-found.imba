import notfound from './../databases/notfound.json'

import { Mensaje } from './../components/mensaje'

export tag NotFound
	<self>
		<section.container [ta:center]>
			<img [mt:5rem] src="./../assets/404.gif">
			<h1> "4 + 0 = 4"
			<h2> <Mensaje message_list=notfound>
			<p> "Como no hay huevo de pascua, puedes recargar la página o volver al inicio 😉"
