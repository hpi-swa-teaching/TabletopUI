as yet unclassified
addPlayerSelectionMenuTo: aTransformationMorph

	| listMorph |
	
	listMorph := PluggableListMorph
		on: self
		list: #nameList
		selected: #selectedIndex
		changeSelected: #selectedIndex:
		menu: nil.

	listMorph
		position: 0@0;
		extent: 200@300;
		color: Color white;
		borderWidth: 1;
		borderColor: Color black.

	aTransformationMorph addMorphFront: listMorph.

	^ listMorph