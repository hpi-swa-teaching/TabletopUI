testing
test12SelectGamemasterDemotesPrevious

	self characterAdministration selectAsGamemaster: self characterAdministration players first.
	self assert: self characterAdministration players first role equals: TTCharacter gamemaster.
	self assert: self characterAdministration players second role equals: TTCharacter player.