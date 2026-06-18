initialization
buildRow: aLabel value: aValue

	| row |
	row := Morph new.
	row
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
        	vResizing: #shrinkWrap;
        	color: Color transparent.
	
	row
		addMorphBack: (self styledLabel: aLabel , ': ');
		addMorphBack: (self styledLabel: aValue asString).

    	^ row