token placement
createPlayerTokenAtTileCoordinates: aPoint

	(self tiles at: aPoint y at: aPoint x) addToken: TTPlayerToken new