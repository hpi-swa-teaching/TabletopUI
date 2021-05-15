toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: {
		(0.5 @ 0 corner: 1 @ 0.75) -> [self actionLog createSpecWith: aToolBuilder].
		(0.5 @ 0.75 corner: 1 @ 1) -> [self inputField createSpecWith: aToolBuilder].
		(0 @ 0 corner: 0.5 @ 1) -> [self scrollPane createSpecWith: aToolBuilder]}	