as yet unclassified
testHandlePlayerRegistrationAddsToRegistry
    
	self registerValidPlayer.
	self assert: ((self manager connectionRegistry) includesKey: self validPlayerName).