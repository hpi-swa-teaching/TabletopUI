actions
reset

	self diceAmounts
		at: 'd4' put: 0;
		at: 'd6' put: 0;
		at: 'd8' put: 0;
		at: 'd10' put: 0;
		at: 'd12' put: 0;
		at: 'd20' put: 0.
	self changed: #d4Changed;
		changed: #d6Changed;
		changed: #d8Changed;
		changed: #d10Changed;
		changed: #d12Changed;
		changed: #d20Changed