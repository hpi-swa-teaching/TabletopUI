testing
test08AddToken

	| map |
	map := TTMap new.
	self defaultDisplay map: map.
	self defaultDisplay addToken.
	self
		assert: map tokens size equals: 1;
		assert: map tokens last character isMonster