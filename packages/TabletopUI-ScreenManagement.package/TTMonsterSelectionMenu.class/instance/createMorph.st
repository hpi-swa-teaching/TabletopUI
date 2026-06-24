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
		position: 0 @ 0;
		extent: 200 @ 400;
		borderWidth: 1;
		doubleClickSelector: #openSelectedMonsterSheet.

	^ listMorph