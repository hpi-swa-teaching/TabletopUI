toolbuilder
createLayoutWith: aToolBuilder forPlayerCount: aNumber

	| layoutElements |
	
	layoutElements := Dictionary new.
	1 to: aNumber do: [:aNumberIndex |
		layoutElements add: (self inputFieldBoundsForIndex: aNumberIndex) -> (self createInputFieldSpecWith: aToolBuilder index: aNumberIndex)].
	
	^ layoutElements