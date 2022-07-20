testing
test02IsTTToken

	self assert: self token isTTToken.
	self deny: Morph new isTTToken

