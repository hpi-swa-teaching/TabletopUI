dice roll
evaluateRollDiceCommand: aString

	| output rollConfiguration diceRolls |
	
	rollConfiguration := self parseRollDiceCommand: aString.
	(TTDice isValidDice: (rollConfiguration at: #diceSize)) ifTrue: [
		diceRolls := TTDice roll: (rollConfiguration at: #diceSize) multipleTimes: (rollConfiguration at: #rollCount).
		output := self printDiceRolls: diceRolls withConfiguration: rollConfiguration]
	ifFalse: [
		output := (rollConfiguration at: #diceSize) asString , ' is not a valid dice size'].
	
	^ output