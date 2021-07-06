dice roll
formatDiceRolls: anOrderedCollection withConfigurations: aDictionary

	| output modifier |

	output := self formatDiceRolls: anOrderedCollection.
	modifier := aDictionary at: #modifier.
	((anOrderedCollection size = 1) and: (modifier = 0)) ifFalse:[
		output := output , (self formatModifier: modifier).
		output := output , ' = ' , (anOrderedCollection inject: modifier into: [:aSum :aDiceroll | aSum+aDiceroll])].

	^ output