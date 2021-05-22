as yet unclassified
roll: diceSize multipleTimes: numberRolls

	| diceRolls |
	
	diceRolls := OrderedCollection new.
	numberRolls timesRepeat: [
		diceRolls add: (self roll: diceSize)].
	
	^ diceRolls