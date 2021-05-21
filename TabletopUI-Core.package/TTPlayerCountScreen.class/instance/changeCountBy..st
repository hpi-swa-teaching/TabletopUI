player count
changeCountBy: aNumber

	(self isValid: self countText) ifTrue: [
		| newCount |
		newCount := countText asNumber + aNumber.
		(newCount > 0) ifTrue: [
			self countText: newCount asString.
			self changed: #countText]]
	ifFalse: [
		self displayInvalidInputMessage]