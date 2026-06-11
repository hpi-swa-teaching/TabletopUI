testing
testHandlePlayerRegistrationAddsToRegistry
    
	self registerValidPlayer.
	self assert: ((self manager connectionRegistry) includesKey: self acceptedPlayerName).