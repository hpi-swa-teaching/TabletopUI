testing-attacks
test105AttacksFieldsSeparate

	self characterSheet attack2Name: 'Insult'.
	self characterSheet attack2Damage: 300.
	self assert: self characterSheet attack2Name = 'Insult'.
	self assert: self characterSheet attack2Damage = '300'