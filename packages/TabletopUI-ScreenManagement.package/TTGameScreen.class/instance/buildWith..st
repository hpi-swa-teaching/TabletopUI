toolbuilder
buildWith: aToolBuilder
	
	^ self buildWith: aToolBuilder children: ({
		(0 @ 0 corner: self toolBarWidth @ 1) -> [self toolBar createSpecWith: aToolBuilder].
		(self toolBarWidth @ 0 corner: self sideBarWidth @ self sideBarSplit) -> [self imageBar createSpecWith: aToolBuilder].
		(self toolBarWidth @ self sideBarSplit corner: self sideBarWidth @ 1) -> [self tokenBar createPanelSpecWith: aToolBuilder].
		(self sideBarWidth @ 0 corner: self rightPanelLeft @ 1) -> [self map createSpecWith: aToolBuilder].
		(self rightPanelLeft @ self multipanelHeight corner: 1 @ 1) -> [self viewContainer createSpecWith: aToolBuilder].
		(self rightPanelLeft @ 0 corner: 1 @ self multipanelHeight) -> [self multipanel createSpecWith: aToolBuilder]} as: Dictionary)
		resizable: true