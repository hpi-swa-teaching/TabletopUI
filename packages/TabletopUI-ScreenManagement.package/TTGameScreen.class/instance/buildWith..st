toolbuilder
buildWith: aToolBuilder
	
	^ self buildWith: aToolBuilder children: ({
		(0 @ 0 corner: 0.05 @ 1) -> [self toolBar createSpecWith: aToolBuilder].
		(0.05 @ 0 corner: 0.15 @ 0.7) -> [self imageBar createSpecWith: aToolBuilder].
		(0.05 @ 0.7 corner: 0.15 @ 1) -> [self tokenBar createPanelSpecWith: aToolBuilder].
		(0.15 @ 0 corner: 0.75 @ 1) -> [self map createSpecWith: aToolBuilder]. 
		(0.75 @ 0.1 corner: 1 @ 1) -> [self viewContainer createSpecWith: aToolBuilder].
		(0.75 @ 0 corner: 1 @ 0.1) -> [self multipanel createSpecWith: aToolBuilder]} as: Dictionary)
		resizable: true