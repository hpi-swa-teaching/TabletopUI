accessing
hasPlayerNamed: name

	^((self currentState at: 'map') at: 'characterTokens') includesKey: name.