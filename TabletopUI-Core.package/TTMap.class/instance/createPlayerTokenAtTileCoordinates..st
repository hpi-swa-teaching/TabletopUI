token placement
createPlayerTokenAtTileCoordinates: aPoint

	(self tiles at: aPoint y at: aPoint x) addToken: 
		(TTPlayerToken newWithOwner: (self tiles at: aPoint y at: aPoint x))