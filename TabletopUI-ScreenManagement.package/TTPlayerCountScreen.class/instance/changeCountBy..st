player count
changeCountBy: aNumber

	(self isValid: self countText) ifTrue: [
		self countText: (1 max: self countText asNumber + aNumber) asString;
			changed: #countText]
	ifFalse: [
		self displayInvalidInputError]