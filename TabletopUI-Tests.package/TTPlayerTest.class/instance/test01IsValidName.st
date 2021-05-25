as yet unclassified
test01IsValidName

	| name1 name2 name3 |
	
	name1 := 'NAME'.
	name2 := 'another name'.
	name3 := 'another name, that is sadly too long :( :( :('.
	
	self assert: (player isValidName: name1).
	self assert: (player isValidName: name2).
	self deny: (player isValidName: name3)
	
	