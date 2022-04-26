import { Header } from './../components/header'

export tag Ayuda
	css .grid d:grid gtc:repeat(3, 1fr) grid-gap:4rem mt:1rem
	css button appearance:none shadow:none bd:.2rem solid var(--primary)
		w:6rem py:.5rem rd:.5rem my:.5rem bg:none
	css button@hover bg:warmer1

	<self>
		<Header
			color="primary"
			title="Ayuda y contacto"
			subtitle="Échame una ayudaíta ahí*"
		>
		<section.container.content>
			<p> "{<sup> "(*)"} Para quién no entendió la referencia, puede pasar con confianza {<a href="https://www.youtube.com/watch?v=W559EvP7MrI&t=80s" target="_blank" noopener noreferrer> "por acá"}. No, no es SPAM 😉."
			<p> "Me encanta ayudar, y sin duda lo haría gratis, PERO..."
			<img src="./../assets/supposed-to-live.gif">
			<p> "Pues si. Es un hecho, todos necesitamos dinero para vivir, lo importante es como te lo ganes."
			<p> "Por suerte, hay muchas formas en las que podemos ayudarnos 😉"
		<section.container>
			<article [ta:center]>
				<h2> "Donaciones"
				<p> "Puedes apoyar mi trabajo a través de:"
				<button.clickable [m:1rem]> "🅿 Paypal"
				<button.clickable [m:1rem]> "💸 Reserve"
				<button.clickable [m:1rem]> "🅱 Criptos"
			<article>
				<h2 [ta:center]> "Interacción"
				<p> "También me ayudas interactuando conmigo en redes sociales o difundiendo mi contenido en:"
				<div [d:grid gtc:repeat(2, 1fr) grid-gap:1rem mt:1rem]>
					<button.clickable [m:0 auto]> "🐤 Twitter"
					<button.clickable [m:0 auto]> "🛅 Linkedin"
					<button.clickable [m:0 auto]> "🐙 Github"
					<button.clickable [m:0 auto]> "📧 Telegram"
