initialize-release
initializeHPWith: aSmallInteger

	self maxHP: aSmallInteger.
	self currentHP: self maxHP.
	self temporaryHP: self defaultTemporaryHP