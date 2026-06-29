helpers
defaultState

	^ Dictionary new
		at: #inputField put: (Dictionary new
			at: #parser put: (Dictionary new
				at: #context put: (Dictionary new
					at: #gameState put: #default;
					yourself);
				yourself);
			yourself);
		at: #actionLog put: (Dictionary new
			at: #actionLogList put: #();
			yourself);
		at: #map put: #();
		yourself