as yet unclassified
test00ChangeName

	| name1 name2 |
	
	name1 := 'NAME'.
	name2 := 'another name'.
	
	player name: name1.
	self assert: (player name) equals: name1.
	
	player changeName: name2.
	self assert: (player name) equals: name2