screen management
continue

	(self isValid: self countText) ifTrue: [
		self characterAdministration playerCount: self countText asNumber.
		self characterAdministration playerCount timesRepeat: [self characterAdministration addPlayer: TTPlayer new].
		self window openPlayerNamesScreen]
	ifFalse: [
		self displayInvalidInputError]
