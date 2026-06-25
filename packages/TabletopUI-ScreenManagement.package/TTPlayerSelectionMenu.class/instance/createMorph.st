toolbuilder
createMorph

	| listMorph |
	
	listMorph := PluggableListMorph
		on: self
		list: #nameList
		selected: #selectedIndex
		changeSelected: #selectedIndex:
		menu: nil.

	listMorph
		position: 0@0;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderWidth: 1.

	^ listMorph