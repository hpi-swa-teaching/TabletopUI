accessing
getState

	self flag: #TODO:
		"Add charactersheet and special handling for gamemaster".
	^ Dictionary new
		at: TTGameStateKeys keyName put: self name asString;
		at: TTGameStateKeys keyRole put: self role asString;
		yourself