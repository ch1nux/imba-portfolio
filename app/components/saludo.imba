export tag Saludo
	hours = new Date!.getHours!

	def greet
		if hours > 18
			"Buenas noches 🌜"
		elif hours > 12
			"Buenas tardes 🌆"
		elif hours > 6
			"Buenos días 🌞"
		else
			"Buenas madrugadas 😴"

	<self>
		<span> greet! + "👋🏼"
