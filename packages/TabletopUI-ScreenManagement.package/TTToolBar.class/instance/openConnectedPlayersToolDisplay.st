tasks
openConnectedPlayersToolDisplay

		self connectedPlayersTool: (TTConnectedPlayersToolDisplay open).
		self connectedPlayersTool model observer: self.
		self addDependent: self connectedPlayersTool model.
		self changed: #connectedPlayersToolButtonColor
