accessing
countText: aText

	(aText asString matchesRegex: '^[1-9][0-9]*$') ifTrue: [
		self playerCount: aText asNumber.].
	self changed: #countText