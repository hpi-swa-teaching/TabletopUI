testing
test06DiceDefault

	self diceToolDisplay diceAmounts keys do: [ :aDiceType |
		self assert: (self diceToolDisplay diceAmounts at: aDiceType) equals: 0]