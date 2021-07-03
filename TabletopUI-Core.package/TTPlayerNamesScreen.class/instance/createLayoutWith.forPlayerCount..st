toolbuilder
createLayoutWith: aToolBuilder forPlayerCount: aNumber

	| inputFields |
	
	inputFields := Dictionary new.
	1 to: aNumber do: [:anIndex |
		inputFields add: 
			(self inputFieldBoundsForIndex: anIndex) -> (self createInputFieldSpecWith: aToolBuilder index: anIndex)].
	
	^ inputFields