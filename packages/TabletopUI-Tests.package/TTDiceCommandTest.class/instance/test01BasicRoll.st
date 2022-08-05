as yet unclassified
test01BasicRoll
	
	| command roll |
	command := TTDiceCommand new
		count: 1;
		type: 20.
		
	roll := command executeDiceRoll.
	
	self assert: 20 equals: command diceRoll size.
	self assert: 1 equals: command diceRoll rolls size.