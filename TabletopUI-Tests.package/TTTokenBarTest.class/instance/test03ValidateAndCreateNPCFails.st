testing
test03ValidateAndCreateNPCFails

	self assert: self tokenBar characterAdministration npcs size equals: 0.
	self tokenBar 
		currentName: '';
		validateAndCreateNPC.
	self assert: self tokenBar characterAdministration npcs size equals: 0