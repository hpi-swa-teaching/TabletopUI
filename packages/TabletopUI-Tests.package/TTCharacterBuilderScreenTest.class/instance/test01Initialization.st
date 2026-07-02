testing
test01Initialization
	
	| freshScreen |
	freshScreen := TTCharacterBuilderScreen new.
	self assert: freshScreen selectedIndex equals: 1.