as yet unclassified
test03MultipleRolls
	
	| command roll |
	command := TTDiceCommand new
		count: 4;
		type: 20.
		
	roll := command executeDiceRoll.
	
	self assert: 20 equals: roll size.
	self assert: 4 equals: roll rolls size.