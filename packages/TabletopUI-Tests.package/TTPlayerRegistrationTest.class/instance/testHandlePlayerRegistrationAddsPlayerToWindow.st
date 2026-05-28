as yet unclassified
testHandlePlayerRegistrationAddsPlayerToWindow

	
	self registerValidPlayer.
	self assert: (self window hasPlayerNamed: self validPlayerName).