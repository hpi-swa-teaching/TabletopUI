tasks
toggleConnectedPlayersToolDisplay 

	self isConnectedPlayersToolToBeOpened 
		ifTrue: [
			self openConnectedPlayersToolDisplay.
			^ self connectedPlayersTool]
		ifFalse: [
			"self connectedPlayersTool nil. "
			self closeConnectedPlayersToolDisplay.
			^ nil]
