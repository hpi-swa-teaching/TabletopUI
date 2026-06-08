as yet unclassified
testHandlePlayerRegistrationAddsPlayerToWindow

	
	self registerValidPlayer.
	self assert: (self manager window hasPlayerNamed: self acceptedPlayerName).