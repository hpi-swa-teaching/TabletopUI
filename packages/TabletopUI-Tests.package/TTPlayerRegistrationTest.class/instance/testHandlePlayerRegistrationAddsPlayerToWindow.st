testing
testHandlePlayerRegistrationAddsPlayerToWindow

	
	self registerValidPlayer.
	self assert: (self hasPlayer: (self manager window) Named: self acceptedPlayerName).