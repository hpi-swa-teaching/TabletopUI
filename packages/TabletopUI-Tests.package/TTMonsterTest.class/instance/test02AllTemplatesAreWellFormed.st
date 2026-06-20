testing
test02AllTemplatesAreWellFormed

	self assert: (self templates allSatisfy: [:m | m isKindOf: TTMonster]);
	     assert: (self templates noneSatisfy: [:m | m name isEmpty])