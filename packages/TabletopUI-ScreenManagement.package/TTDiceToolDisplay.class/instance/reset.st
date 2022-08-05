actions
reset

	self diceAmounts
		at: 'd4' put: 0;
		at: 'd6' put: 0;
		at: 'd8' put: 0;
		at: 'd10' put: 0;
		at: 'd12' put: 0;
		at: 'd20' put: 0.
	self changed: #d4Changed.
	self changed: #d6Changed.
	self changed: #d8Changed.
	self changed: #d10Changed.
	self changed: #d12Changed.
	self changed: #d20Changed.