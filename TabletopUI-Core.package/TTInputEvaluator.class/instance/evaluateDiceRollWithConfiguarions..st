dice roll
evaluateDiceRollWithConfiguarions: aDictionary

	| diceRolls |

	diceRolls := TTDice 
		roll: (aDictionary at: #diceSize) 
		multipleTimes: (aDictionary at: #rollCount).
			
	^ self formatDiceRolls: diceRolls withConfigurations: aDictionary