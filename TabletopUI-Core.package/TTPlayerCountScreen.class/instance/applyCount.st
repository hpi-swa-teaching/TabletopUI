player count
applyCount

	self characterAdministration playerCount: self countText asNumber.
	self characterAdministration playerCount timesRepeat: [self characterAdministration addPlayer: TTCharacter new]