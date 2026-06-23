testing - construction
test08PageSwitchSamePage

	| display |
	
	display := self openDisplay.
	display layoutPage: 1.
	self shouldnt: [display layoutPage: 1] raise: Error