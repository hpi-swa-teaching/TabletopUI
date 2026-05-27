as yet unclassified
handlePlayerRegistration: aDict

	| name role connectionDetails |
	
	(self registrationRequestIsValid: aDict) ifTrue: [
	name:= aDict at: 'name'.
	role:= aDict at: 'role'.
	connectionDetails:= aDict at: 'connectionDetails'.

	self 
		registerClient: name role: role connectionDetails: connectionDetails;
		addToGameState: name role: role;
		broadcastUpdatedState.
	]