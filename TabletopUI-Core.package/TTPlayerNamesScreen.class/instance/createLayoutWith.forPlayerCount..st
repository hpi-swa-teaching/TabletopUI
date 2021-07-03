toolbuilder
createLayoutWith: aToolBuilder forPlayerCount: aNumber

	| inputFields |
	
	inputFields := Dictionary new.
	1 to: aNumber do: [:aNumberIndex |
		inputFields add: (self inputFieldBoundsForIndex: aNumberIndex) -> (self createInputFieldSpecWith: aToolBuilder index: aNumberIndex)].
	
	^ inputFields