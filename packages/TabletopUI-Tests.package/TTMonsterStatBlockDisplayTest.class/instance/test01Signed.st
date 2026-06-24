testing
test01Signed

	self
		assert: (self display signed: '3') equals: '+3';
		assert: (self display signed: '0') equals: '+0';
		assert: (self display signed: '-1') equals: '-1'