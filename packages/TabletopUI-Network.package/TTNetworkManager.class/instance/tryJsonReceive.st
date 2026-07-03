receiving
tryJsonReceive

	[^ self jsonReceive] on: Error do: [
		self shouldClose ifFalse: [
			self end.
			self error: 'Error during receive - assuming connection was cut or other end bugged'].
		^ nil]