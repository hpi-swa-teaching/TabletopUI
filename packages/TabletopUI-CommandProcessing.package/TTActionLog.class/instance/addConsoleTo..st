toolbuilder
addConsoleTo: aTransformationMorph

	| consoleMorph |

	consoleMorph := PluggableListMorph
		on: self
		list: #actionLogList
		selected: nil
		changeSelected: nil
		menu: nil.

	consoleMorph
		position: 0@0;
		extent: 300@500;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color white;
		borderWidth: 1;
		borderColor: Color black.

	aTransformationMorph addMorphFront: consoleMorph.

	^ consoleMorph