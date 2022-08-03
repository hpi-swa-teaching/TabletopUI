testing
test04ChangeName

	| name |
	
	name := 'Narme'.
	self character name: name.
	self assert: (self character name) equals: name