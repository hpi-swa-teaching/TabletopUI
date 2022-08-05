testing
test01SelectDice

	self diceToolDisplay diceAmounts keys do: [ :aDiceType |
		self diceToolDisplay perform: ('select', aDiceType) asSymbol.
		self assert: (self diceToolDisplay diceAmounts at: aDiceType) equals: 1]