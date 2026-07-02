testing-combat
test71SpeedChange

	self characterSheet speed: 40.
	self assert: self characterSheet speed equals: '40'