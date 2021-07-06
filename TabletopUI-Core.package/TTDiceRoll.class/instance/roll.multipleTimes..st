dice rolling
roll: diceSize multipleTimes: numberRolls
	
	self rolls: OrderedCollection new.
	numberRolls timesRepeat: [
		self rolls add: (self roll: diceSize)]