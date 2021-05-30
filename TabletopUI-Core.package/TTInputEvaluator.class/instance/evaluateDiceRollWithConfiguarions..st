dice roll
evaluateDiceRollWithConfiguarions: aDictionary

	| diceRolls |

	diceRolls := TTDice 
		roll: (aDictionary at: #diceSize) 
		multipleTimes: (aDictionary at: #rollCount).
			
	^ self printDiceRolls: diceRolls withConfigurations: aDictionary