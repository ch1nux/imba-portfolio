import { Video } from "./../components/video"

export tag Showcase
	prop title = "Title"
	prop has_video = no
	prop video = ""
	prop has_image = no
	prop image = ""
	prop detail = ""
	prop url = "#"

	css p d:inline-block
	css summary fs:1.1rem
	css summary::marker	fs:1.25rem pl:1rem
	css ::marker c:var(--green) fw:bold

	<self>
		<details.shadow.clickable [p:1.25rem rd:.5rem]>
			<summary> title
			if has_image or has_video
				<div [py:1rem]>
					if has_image
						if url is '#'
							<img src=image alt="Imagen" [w:100%]>
						else
							<a href=url target="_blank" noopener noreferrer>
								<img src=image alt="Clic aqui para acceder a la página" [w:100%]>
					if has_video
						<Video video=video>
			<p> detail
