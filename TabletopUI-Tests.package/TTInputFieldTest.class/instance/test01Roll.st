tests
test01Roll

	| result |
	result := inputField evaluate: 'roll d'.
	self assert: result = 'Invalid input'.
	result := inputField evaluate: 'roll d06'.
	self assert: result = 'Invalid input'.
	result := inputField evaluate: 'roll d1'.
	self assert: result asNumber = 1.
	result := inputField evaluate: 'roll d4'.
	self assert: (result asNumber >= 1 and: [result asNumber <= 4]).
	result := inputField evaluate: 'roll d6'.
	self assert: (result asNumber >= 1 and: [result asNumber <= 6]).