export tag Scrolltop
	prop color = "cool8"

	<self>
		<section.container [ta:center]>
			<button
				[
					appearance:none bg:{"var(--{color})"} bd:none c:white
					cursor:pointer px:1.25rem py:1rem rd:9999px fs:1.1rem
					ff:sans
				]
				@click=(window.scrollTo({ top: 0, behavior: 'smooth' }))
			> "☝🏼 Dale pa' rriba"
