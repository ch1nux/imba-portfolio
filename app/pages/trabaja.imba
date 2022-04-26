import { Header } from './../components/header'
import { Showcase } from './../components/showcase'
import { Scrolltop } from './../components/scrolltop'

import chambas from './../databases/chambas.json'
import charlas from './../databases/charlas.json'
import charolas from './../databases/charolas.json'

export tag Trabaja
	css .grid d:grid gtc:repeat(2, 1fr) grid-gap:1rem mt:2rem

	chamba_map = {
		venemergencia: import("./../assets/venemergencia.png"),
		forintra: import("./../assets/forintra.png"),
		corazonllanero: import("./../assets/corazonllanero.png"),
		portafolio: import("./../assets/portafolio.png"),
		"total-training": import("./../assets/total-training.png"),
		"hundred-vue": import("./../assets/hundred-vue.png")
	}
	charla_map = {
		"presentacion-api-gobierno": import("./../assets/presentacion-api-gobierno.png"),
		"presentacion-ludico-5": import("./../assets/presentacion-ludico-5.png"),
		"presentacion-php": import("./../assets/presentacion-php.png")
	}
	charola_map = {
		"IBM-1": import("./../assets/IBM-1.png"),
		"IBM-2": import("./../assets/IBM-2.png"),
		"IBM-3": import("./../assets/IBM-3.png")
	}

	<self>
		<Header
			color="green"
			title="#chambas #charlas #charolas"
			subtitle="Coloquial: trabajos, conferencias y certificados"
		>
		<section.container [py:1.5rem]>
			<h2 [ta:center c:var(--green)]> "#chambas"
			<.grid> for chamba in chambas
				<Showcase
					title=chamba.title
					has_image=chamba.hasImage
					image=chamba_map[chamba.image]
					detail=chamba.detail
					url=chamba.url
				>
		<section.container [py:1.5rem]>
			<h2 [ta:center c:var(--green)]> "#charlas"
			<.grid> for charla in charlas
				<Showcase
					title=charla.title
					has_image=charla.hasImage
					has_video=charla.hasVideo
					image=charla_map[charla.image]
					url=charla.url
					video=charla.video
					detail=charla.detail
				>
		<section.container [py:1.5rem]>
			<h2 [ta:center c:var(--green)]> "#charolas"
			<.grid> for charola in charolas
				<Showcase
					title=charola.title
					has_image=charola.hasImage
					image=(charola_map[charola.image] || charola.image)
					url=charola.url
					detail=charola.detail
				>
		<Scrolltop color="green">
