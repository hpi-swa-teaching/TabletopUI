testing
test04ChangeName

	| name |
	
	name := 'Narme'.
	self assert: (self character name) equals: ''.
	self character name: name.
	self assert: (self character name) equals: name