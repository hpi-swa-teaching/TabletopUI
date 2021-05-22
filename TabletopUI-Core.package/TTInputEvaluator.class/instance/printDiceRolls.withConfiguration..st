dice roll
printDiceRolls: anOrderedCollection withConfiguration: aDictionary

	| output |

	output := (anOrderedCollection at: 1) asString.
	(anOrderedCollection size > 1) ifTrue: [
		anOrderedCollection fold: [:a :b | output := output , ' + ' , b].
		anOrderedCollection add: (aDictionary at: #modifier).
		output := output , (self addModifier: (aDictionary at: #modifier)).
		output := output , ' = ' , (anOrderedCollection fold: [:a :b | a+b])].

	^ output