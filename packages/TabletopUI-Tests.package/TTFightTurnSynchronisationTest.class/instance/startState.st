accessing
startState

	^ Dictionary new
		at: #parser put: (Dictionary new
			at: #context put: (Dictionary new
				at: #gameState put: #initiative;
				at: #rolls put: (OrderedDictionary new
					at: 'Alice' put: 2;
					at: 'Bob' put: 1;
					yourself);
				yourself);
			yourself);
		yourself