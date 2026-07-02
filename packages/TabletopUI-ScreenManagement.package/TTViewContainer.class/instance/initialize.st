initialization
initialize

	super initialize.
	self 
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		ownerChangedHandler: [self extent: self owner extent]