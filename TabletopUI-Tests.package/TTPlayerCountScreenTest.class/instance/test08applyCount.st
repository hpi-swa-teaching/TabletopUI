testing
test08applyCount

	self screen countText: '3'.
	self screen applyCount.
	self assert: self characterAdministration playerCount equals: 3.
	self assert: self characterAdministration players size equals: 3