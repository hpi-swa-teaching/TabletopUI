execution
execute: aContext
	
	| value |
	value :=  self diceRoll resultValue.
	negated ifTrue: [value := -1 * value].
	^ value