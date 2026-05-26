testing
test07LoadState

	self character loadState: self characterInstantiationDict.

	self
		assert: self character name = (self characterInstantiationDict at: TTGameStateKeys keyName);
		assert: self character role = (self characterInstantiationDict at: TTGameStateKeys keyRole)