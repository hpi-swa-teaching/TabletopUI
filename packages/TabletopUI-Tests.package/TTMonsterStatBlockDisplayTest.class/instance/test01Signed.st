testing
test01Signed

	self
		assert: (self defaultDisplay signed: '3') equals: '+3';
		assert: (self defaultDisplay signed: '0') equals: '+0';
		assert: (self defaultDisplay signed: '-1') equals: '-1'