dice roll
printDiceRolls: anOrderedCollection withConfigurations: aDictionary

	| output |

	output := (anOrderedCollection at: 1) asString.
	(anOrderedCollection size > 1) ifTrue: [
		anOrderedCollection fold: [:a :aNumber | output := output , ' + ' , aNumber]].
	anOrderedCollection add: (aDictionary at: #modifier).
	output := output , (self addModifier: (aDictionary at: #modifier)).
	((anOrderedCollection at: 2) ~= 0) ifTrue: [
		output := output , ' = ' , (anOrderedCollection fold: [:sum :diceroll | sum+diceroll])].

	^ output