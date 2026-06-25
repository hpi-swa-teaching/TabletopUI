display
addText: aString to: aContainer

	aContainer addMorphBack: 
	(TextMorph new 
		contents: (self styledText: aString); 
		wrapFlag: true; 
		hResizing: #spaceFill; 
		autoFit: true; 
		color: self defaultTextColor;
		yourself)