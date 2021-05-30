dice roll
formatDiceRolls: anOrderedCollection withConfigurations: aDictionary

	| formattedOutput |

	formattedOutput := self formatDiceRolls: anOrderedCollection.
	((anOrderedCollection size = 1) and: ((aDictionary at: #modifier) = 0)) ifFalse:[
		formattedOutput := formattedOutput , (self addModifier: (aDictionary at: #modifier)).
		formattedOutput := formattedOutput , ' = ' , (anOrderedCollection fold: [:sum :diceroll | sum+diceroll])].

	^ formattedOutput