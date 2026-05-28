accessing
isConnectedPlayersToolToBeOpened
	
	self connectedPlayersTool ifNil: [^ true].
	self connectedPlayersTool owner
		ifNotNil: [ ^ false] 
		ifNil: [ ^ true ]