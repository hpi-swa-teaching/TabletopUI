actions
rollDice

	|modifierUsedOrZero outputString|
	
	outputString := ''.
	modifierUsedOrZero := self modifier = 0.
	self diceAmounts keys do: [ :aDice |
		((self diceAmounts at: aDice) = 0) ifFalse: [
			modifierUsedOrZero ifTrue: [
				outputString := outputString , (self diceAmounts at: aDice) asString, aDice, '+']
			ifFalse: [
				outputString := outputString, (self diceAmounts at: aDice) asString, aDice, self modifierAsString, '+'.
				modifierUsedOrZero := true]]].
	outputString isEmpty ifFalse: [
	outputString := outputString copyFrom: 1 to: (outputString size) - 1].
	self inputField processInput: 'roll ', outputString.
	self reset