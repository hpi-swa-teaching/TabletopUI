testing
test03ValidateAndCreateNPCFails

	self tokenBar 
		currentName: '';
		validateAndCreateNPC.
	self assert: self tokenBar characterAdministration npcs size equals: 0