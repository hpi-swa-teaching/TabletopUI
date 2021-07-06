dice rolling
roll: diceSize multipleTimes: numberRolls
	
	self rolls: OrderedCollection new.
	numberRolls timesRepeat: [
		rolls add: (self roll: diceSize)]