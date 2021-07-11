testing
test08ApplyCount

	self screen 
		countText: '3';
		applyCount.
	self 
		assert: self characterAdministration playerCount equals: 3;
		assert: self characterAdministration players size equals: 3