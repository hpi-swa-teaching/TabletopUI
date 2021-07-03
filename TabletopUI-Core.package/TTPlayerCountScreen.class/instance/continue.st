screen management
continue

	(self isValid: self countText) ifTrue: [
		self game playerCount: self countText asNumber.
		self game playerCount timesRepeat: [self game addPlayer: TTPlayer new].
		self window openPlayerNamesScreen]
	ifFalse: [
		self throwInvalidInputException]
