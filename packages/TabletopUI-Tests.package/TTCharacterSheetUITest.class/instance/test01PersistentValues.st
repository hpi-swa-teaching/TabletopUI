testing - integration
test01PersistentValues

	| firstDisplay secondDisplay |
	
	firstDisplay := self openDisplay.
	firstDisplay model strength: 12.
	secondDisplay := self openDisplay.
	self assert: (secondDisplay model strength) equals: '12'