accessing
selectedIndex: aNumber

	(aNumber > 0) ifTrue: [
		selectedIndex := aNumber.
		self changed: #selectedIndex]