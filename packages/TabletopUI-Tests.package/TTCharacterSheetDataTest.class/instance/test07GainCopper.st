testing-money
test07GainCopper

	self characterSheet gain: 42069 of: #copper.
	self assert: self characterSheet copper equals: '42069'