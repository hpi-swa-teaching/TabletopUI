screen management
continue

	(self isValid: self countText) ifTrue: [
		self applyCount.
		self window openPlayerNamesScreen]
	ifFalse: [
		self displayInvalidInputError]
