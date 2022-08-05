testing
test04RollDiceWithModifier

	self diceToolDisplay selectd4.
	self diceToolDisplay modifierChanged: '4'.
	self diceToolDisplay rollDice.
	self diceToolDisplay selectd4.
	self diceToolDisplay modifierChanged: '-4'.
	self diceToolDisplay rollDice.
	self assert: self mockInputField inputs first equals: 'roll 1d4+4'.
	self mockInputField inputs removeFirst.
	self assert: self mockInputField inputs first equals: 'roll 1d4-4'