accessing
isConnectedPlayersToolActive
	
	self connectedPlayersTool ifNil: [^ false].
	self connectedPlayersTool model ifNil: [^false].
	self connectedPlayersTool model aboutToBeClosed ifTrue: [^ false].
	
	self connectedPlayersTool owner
		ifNotNil: [ ^ true] 
		ifNil: [ ^ false ]