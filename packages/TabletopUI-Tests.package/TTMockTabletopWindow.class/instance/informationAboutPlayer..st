accessing
informationAboutPlayer: name

	 ^((self currentState at: 'map') at: 'characterTokens') at: name