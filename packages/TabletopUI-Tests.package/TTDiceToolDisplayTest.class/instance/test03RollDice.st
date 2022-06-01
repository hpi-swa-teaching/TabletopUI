testing
test03RollDice

	self diceToolDisplay selectd4.
	self diceToolDisplay selectd6.
	self diceToolDisplay selectd8.
	self diceToolDisplay selectd10.
	self diceToolDisplay selectd12.
	self diceToolDisplay selectd20.
	self diceToolDisplay selectd20.
	self diceToolDisplay selectd20.
	self diceToolDisplay selectd20.
	self diceToolDisplay rollDice.
	self diceToolDisplay rollDice.
	self assert: self mockInputField inputs first equals: 'roll 1d8'.
	self mockInputField inputs removeFirst.
	self assert: self mockInputField inputs first equals: 'roll 1d6'.
	self mockInputField inputs removeFirst.
	self assert: self mockInputField inputs first equals: 'roll 1d4'.
	self mockInputField inputs removeFirst.
	self assert: self mockInputField inputs first equals: 'roll 4d20'.
	self mockInputField inputs removeFirst.
	self assert: self mockInputField inputs first equals: 'roll 1d12'.
	self mockInputField inputs removeFirst.
	self assert: self mockInputField inputs first equals: 'roll 1d10'.
	self mockInputField inputs removeFirst.
	self assert: self mockInputField inputs isEmpty
