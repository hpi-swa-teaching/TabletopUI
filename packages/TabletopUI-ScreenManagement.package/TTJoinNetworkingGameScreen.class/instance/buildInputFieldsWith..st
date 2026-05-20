toolbuilder
buildInputFieldsWith: aToolBuilder
	| inputFields |	
		inputFields := Dictionary new.
		
		1 to: 4 do: [:anIndex |
		inputFields add: 
			(self inputFieldBoundsForIndex: anIndex) -> 
				(self createInputFieldSpecWith: aToolBuilder index: anIndex)].
			

	^ self buildWith: aToolBuilder children: (
		
	inputFields
	
	)