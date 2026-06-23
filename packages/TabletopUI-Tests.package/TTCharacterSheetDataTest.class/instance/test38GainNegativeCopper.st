testing-money
test38GainNegativeCopper

	self characterSheet gain: -42069 of: #copper.
	self assert: self characterSheet copper = '0'