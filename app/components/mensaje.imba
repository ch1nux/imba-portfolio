export tag Mensaje
	prop message_list = []

	def randomize top
		Math.floor(Math.random! * top)

	<self>
		<span> message_list[randomize(message_list.length - 1)]
