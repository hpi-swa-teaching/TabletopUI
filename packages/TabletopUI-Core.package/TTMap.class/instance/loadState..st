initialization
loadState: aDictionary

	| tile position tokenState |
	
	self tokens do: [ :token |
		tokenState := (aDictionary at: #characterTokens)
			at: token character name
			ifAbsent: [ nil ].
		position := tokenState
			ifNotNil: [
				((tokenState at: #mapCoordinates ifAbsent: [ nil ])
					ifNotNil: [ :mapCoordinates |
						mapCoordinates at: #tileCoordinates ifAbsent: [ nil ] ]) ].
		position
			ifNotNil: [
				tile := (self tiles atRow: (position at: #y)) at: (position at: #x).
				self loadToken: token at: tile ]]


