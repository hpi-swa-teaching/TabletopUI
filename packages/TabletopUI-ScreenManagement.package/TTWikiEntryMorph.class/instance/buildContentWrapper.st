initialization
buildContentWrapper

	^ Morph new 
		color: Color transparent; 
		changeTableLayout; 
		listDirection: #topToBottom; 
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap
