accessing
selectedIndex: aNumber

	aNumber <= 0 ifTrue: [^ self].
	selectedIndex := aNumber.
	self changed: #selectedIndex