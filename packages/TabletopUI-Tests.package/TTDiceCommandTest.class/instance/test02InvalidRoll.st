as yet unclassified
test02InvalidRoll
	
	| command result |
	command := TTDiceCommand new
		count: 1;
		type: 420.
		
	result := command execute: self context from: self character.
	self assert: self context invalidDiceRollMessageString equals:result errorMessage.