toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: {
		(0 @ 0 corner: 0.1 @ 0.7) -> [self imageBar createSpecWith: aToolBuilder].
		(0 @ 0.7 corner: 0.1 @ 1) -> [self tokenBar createPanelSpecWith: aToolBuilder].
		(0.1 @ 0 corner: 0.75 @ 1) -> [self map createSpecWith: aToolBuilder].
		(0.75 @ 0 corner: 1 @ 0.85) -> [self actionLog createSpecWith: aToolBuilder].
		(0.82 @ 0.85 corner: 1 @ 1) -> [self inputField createSpecWith: aToolBuilder].
		(0.75 @ 0.85 corner: 0.82 @ 1) -> [self playerSelectionMenu createSpecWith: aToolBuilder]} asDictionary
		resizable: true