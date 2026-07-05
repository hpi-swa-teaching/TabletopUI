initialize-release
loadState: aDictionary

	self
		name: (aDictionary at: TTGameStateKeys keyName);
		role: (aDictionary at: TTGameStateKeys keyRole)