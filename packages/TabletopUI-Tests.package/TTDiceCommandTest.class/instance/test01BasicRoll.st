as yet unclassified
test01BasicRoll
	
	| command roll |
	command := TTDiceCommand new
		count: 1;
		type: 20.
		
	roll := command executeDiceRoll.
	
	self assert: 20 equals: roll size.
	self assert: 1 equals: roll rolls size.