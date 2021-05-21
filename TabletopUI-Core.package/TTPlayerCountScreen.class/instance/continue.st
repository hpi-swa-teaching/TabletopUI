screen management
continue

	(self isValid: self countText) ifTrue: [
		self game count: self countText asNumber.
		self window openPlayerNamesScreen]
	ifFalse: [
		self displayInvalidInputMessage]
