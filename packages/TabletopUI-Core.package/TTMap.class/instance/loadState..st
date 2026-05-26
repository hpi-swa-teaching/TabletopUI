initialization
loadState: aDictionary

	| tile position tokenState |

	self tokens do: [ :token |
		tokenState := (aDictionary at: TTGameStateKeys keyCharacterTokens)
			at: token character name
			ifAbsent: [ nil ].
		position := tokenState
			ifNotNil: [
				((tokenState at: TTGameStateKeys keyMapCoordinates ifAbsent: [ nil ])
					ifNotNil: [ :mapCoordinates |
						mapCoordinates at: TTGameStateKeys keyTileCoordinates ifAbsent: [ nil ] ]) ].
		position
			ifNotNil: [
				tile := (self tiles atRow: (position at: #y)) at: (position at: #x).
				self loadToken: token at: tile ]]