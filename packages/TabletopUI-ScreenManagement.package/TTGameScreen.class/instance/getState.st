accessing
getState

	 ^Dictionary new
		at: #inputField put: self inputField getState;
		at: #map put: self map getState;
		at: #actionLog put: self actionLog getState;
		yourself