testing
test05Reset

	self diceToolDisplay selectd4.
	self diceToolDisplay selectd6.
	self diceToolDisplay selectd8.
	self diceToolDisplay selectd10.
	self diceToolDisplay selectd12.
	self diceToolDisplay selectd20.
	self diceToolDisplay selectd20.
	self diceToolDisplay selectd20.
	self diceToolDisplay selectd20.
	self diceToolDisplay reset.
	self assert: (self diceToolDisplay diceAmounts at: 'd4') equals: 0.
	self assert: (self diceToolDisplay diceAmounts at: 'd6') equals: 0.
	self assert: (self diceToolDisplay diceAmounts at: 'd8') equals: 0.
	self assert: (self diceToolDisplay diceAmounts at: 'd10') equals: 0.
	self assert: (self diceToolDisplay diceAmounts at: 'd12') equals: 0.
	self assert: (self diceToolDisplay diceAmounts at: 'd20') equals: 0.