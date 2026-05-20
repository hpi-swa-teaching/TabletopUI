accessing
getState

	self flag: #TODO:
		"Add charactersheet and special handling for gamemaster".
	^ Dictionary new
		at: #name put: self name asString;
		at: #role put: self role asString;
		yourself