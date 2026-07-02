testing-attacks
test105AttacksFieldsSeparate

	self characterSheet attack2Name: 'Insult'.
	self characterSheet attack2Damage: 300.
	self assert: self characterSheet attack2Name equals: 'Insult'.
	self assert: self characterSheet attack2Damage equals: '300'