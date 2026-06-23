as yet unclassified
fightingState2

	^ Dictionary new
		at: #inputField put: (Dictionary new
			at: #parser put: (Dictionary new
				at: #context put: (Dictionary new
					at: #gameState put: #fight;
					at: #currentPlayer put: 'Giuseppe';
					at: #fightingPlayerNames put: #('Gustavo' 'Gregori' 'Giuseppe');
					yourself);
				yourself);
			yourself);
		at: #actionLog put: (Dictionary new
			at: #actionLogList put: #();
			yourself);
		at: #map put: #();
		yourself