import { Header } from './../components/header'
import { CV } from './../components/cv'

export tag Existe
	css form my:1.5rem d:flex jc:center ai:center
	css input d:none
	css label@hover cursor:pointer
	css label m:0 1rem 0 .5rem
	css label@before
		content:''
		d:inline-block
		w:1rem h:1rem bd:.05rem solid var(--primary)
		va:middle mr:.5rem
	css input@checked + label@before
		content: '✔'
		d:inline-block
		lh:1
		va:middle

	resume_status = "corto"

	<self>
		<Header
			color="blue"
			title="Un corto resumen sobre mí..."
			subtitle="...o no 🤔"
		>
		<form>
			<input name="resume" type="radio" id="corto" value="corto" bind=resume_status>
			<label for="corto"> "Corto 🤏🏼"
			<input name="resume" type="radio" id="medio" value="medio" bind=resume_status>
			<label for="medio"> "Medio ✌🏼"
			<input name="resume" type="radio" id="largo" value="largo" bind=resume_status>
			<label for="largo"> "Largo 🙌🏼"

		<section.container.content>
			if resume_status is "corto"
				<p> "Soy Jhony, {<em> "un aguacate que programa"}. Me gusta enseñar Javascript. Me considero fan de lo caótico que es Internet. Tanto que suelo publicar contenido y enseñar desarrollo para la web."
			elif resume_status is "medio"
				<p> "Soy Jhony Grillet, {<em> "un aguacate que programa"} Me gusta enseñar Javascript. Me considero fan de lo caótico que es Internet. Tanto que suelo publicar contenido y enseñar desarrollo para la web."
				<p> "Tanto que suelo publicar contenido relacionado a la web y algunos pensamientos. Me gusta enseñar las maravillas del desarrollo web usando Javascript. Este blog/portafolio es parte de esa pasión."
			elif resume_status is "largo"
				<p> "Soy Jhony Alberto Grillet Medina, Ingeniero de Sistemas, escritor, profesor de desarrollo web y creador de la marca {<em> "un aguacate que programa"}. Programo mayormente en Javascript, aunque a veces suelo usar Python orientado a la web. Me considero fan de los gatos, los memes, las chucherías y de todo lo caótico pero hermoso que es Internet."
				<p> "Tanto que suelo publicar contenido regularmente relacionado a las tecnologías web, uno que otro meme y algunos pensamientos."
				<p> "Me gusta enseñar las maravillas del desarrollo web usando Javascript así como también, crear un entorno seguro para el aprendizaje, y considero que este blog/portafolio es parte de esa pasión que considero mi propósito de vida: {<strong> "Enseñar"}."
			<p> <CV>
