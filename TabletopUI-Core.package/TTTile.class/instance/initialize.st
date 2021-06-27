initialization
initialize

	super initialize.
	
	self 
		extent: (self class defaultSize) @ (self class defaultSize);
		borderWidth: 1;
		borderColor: Color gray;
		color: Color transparent;
		occupied: false