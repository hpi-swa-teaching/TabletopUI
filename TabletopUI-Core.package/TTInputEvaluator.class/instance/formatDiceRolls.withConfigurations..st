dice roll
formatDiceRolls: anOrderedCollection withConfigurations: aDictionary

	| output |

	output := self formatDiceRolls: anOrderedCollection.
	((anOrderedCollection size = 1) and: ((aDictionary at: #modifier) = 0)) ifFalse:[
		output := output , (self formatModifier: (aDictionary at: #modifier)).
		output := output , ' = ' , (anOrderedCollection fold: [:sum :diceroll | sum+diceroll])].

	^ output