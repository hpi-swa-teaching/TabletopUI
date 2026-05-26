as yet unclassified
testHandlePlayerRegistrationRejectsToAddToRegistry
    
	self registerTwoGameMasters.
	self assert: ((self manager connectionRegistry) includesKey: self validPlayerName).
	self deny: ((self manager connectionRegistry) includesKey: self invalidPlayerName).