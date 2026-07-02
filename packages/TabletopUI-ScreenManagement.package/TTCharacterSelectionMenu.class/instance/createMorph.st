toolbuilder
createMorph

	| listMorph |
	listMorph := PluggableListMorph
		on: self
		list: #nameList
		selected: #selectedIndex
		changeSelected: #selectedIndex:
		menu: nil.

	self configureListMorph: listMorph.

	^ listMorph