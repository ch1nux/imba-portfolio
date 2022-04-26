import { Firma } from './firma'

export tag Footer
	year = new Date().getFullYear()

	css p mb:.5rem

	<self>
		<footer [mt:2rem bgc:var(--primary) c:white0 ta:center py:2rem]>
			<p> "Durante el desarrollo de esta página, no se dañó ningún 🥑"
			<p> "© {year}. El Aguacate Programador 🥑"
			<p> "Hecho con {<a [c:var(--link)] href="https://imba.io" noopener noreferrer target="_blank"> "Imba"} + {<a [c:var(--link)] href="https://notion.so" noopener noreferrer target="_blank"> "Notion"} +🥑"
			<p> <Firma>
