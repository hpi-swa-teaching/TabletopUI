actions
rollDice

	| modifierUsedOrZero |
	modifierUsedOrZero := self modifier = 0.
	self diceAmounts keys do: [ :aDice |
		((self diceAmounts at: aDice) = 0) ifFalse: [
			modifierUsedOrZero ifTrue: [
				self inputField processInput: ('roll ', (self diceAmounts at: aDice) asString, aDice)]
			ifFalse:[
				self inputField processInput: 
					('roll ', (self diceAmounts at: aDice) asString, aDice, self modifierAsString).
				modifierUsedOrZero := true]]].
	self reset