testing
test03ValidateAndCreateNPCFails

	self assert: self tokenBar characterAdministration npcs size equals: 0.
	self tokenBar currentName: ''.
	self tokenBar validateAndCreateNPC.
	self assert: self tokenBar characterAdministration npcs size equals: 0