toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: {
		(0 @ 0 corner: 0.7 @ 1) -> [self scrollPane createSpecWith: aToolBuilder].
		(0.7 @ 0 corner: 1 @ 0.75) -> [self actionLog createSpecWith: aToolBuilder].
		(0.8 @ 0.75 corner: 1 @ 1) -> [self inputField createSpecWith: aToolBuilder].
		(0.7 @ 0.75 corner: 0.8 @ 1) -> [self playerSelectionMenu createSpecWith: aToolBuilder]} asDictionary
		resizable: true