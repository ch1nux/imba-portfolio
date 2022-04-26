import { Header } from './../components/header'

export tag Agenda
	<self>
		<Header
			color="orange"
			title="Agenda una mentoría conmigo"
			subtitle="Conversemos un rato 😉"
		>
		<section.container.content>
			<article>
				<h2 [ta:center c:var(--orange)]> "Mentorías 1-1"
				<p> "Podemos conversar 30 minutos (ó una hora) sobre:"
				<ul [ml:1rem]>
					<li> "Simulación de entrevistas técnicas."
					<li> "Por dónde empiezo a programar."
					<li> "Primer empleo/trabajo remoto."
					<li> "HTML, CSS, Javascript."
					<li> "Desarrollo web."
				<button.clickable [w:100%]> "🤝🏼 Quiero una mentoría"
