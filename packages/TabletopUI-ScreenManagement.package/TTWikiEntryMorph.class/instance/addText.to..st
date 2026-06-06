accessing
addText: aString to: aContainer

	aContainer addMorphBack: (TextMorph new contents: (self styledText: aString); wrapFlag: true; hResizing: #spaceFill; autoFit: true; yourself)