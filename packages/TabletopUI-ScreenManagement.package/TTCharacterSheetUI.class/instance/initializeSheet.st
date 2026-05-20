initialization
initializeSheet

	^ (Morph new
		extent: self sheetExtent;
		color: Color white;
		sticky: true;
		yourself)