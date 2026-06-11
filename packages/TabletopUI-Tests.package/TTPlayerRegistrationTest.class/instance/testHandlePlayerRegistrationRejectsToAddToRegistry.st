testing
testHandlePlayerRegistrationRejectsToAddToRegistry
    
	self registerTwoGameMasters.
	self assert: ((self manager connectionRegistry) includesKey: self acceptedPlayerName).
	self deny: ((self manager connectionRegistry) includesKey: self rejectedPlayerName).