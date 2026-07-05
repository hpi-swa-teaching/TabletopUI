accessing
getState

	^ Dictionary new
		at: TTGameStateKeys keyName put: self name asString;
		at: TTGameStateKeys keyRole put: self role asString;
		yourself