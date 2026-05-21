testing
test04CharacterTokenAggregationInState

	| state tokenKey tokenEntry |
	state := self map getState.
	tokenKey:= (state at: #characterTokens) ifEmpty: [nil] ifNotEmpty: [ :dict | dict keys anyOne ].
	tokenKey ifNil: [ ^self].
	
	tokenEntry:= (state at: #characterTokens) at: tokenKey.
	self 
		assert: (tokenEntry isKindOf: Dictionary);
		assert: (tokenEntry includesKey: #name);
		assert: (tokenKey = (tokenEntry at: #name));
		assert: (tokenEntry includesKey: #tileCoordinates);
		assert: (tokenEntry includesKey: #pixelCoordinates);
		assert: ((tokenEntry at: #tileCoordinates) = self map convertPixelPositionToTileCoordinates: (self tokenEntry at: #pixelCoordinates)).