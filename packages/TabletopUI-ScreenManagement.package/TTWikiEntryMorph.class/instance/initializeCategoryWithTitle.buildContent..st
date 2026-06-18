display
initializeCategoryWithTitle: aTitle buildContent: aBlock

	| container |
	container := Morph new 
		changeTableLayout; 
		listDirection: #topToBottom; 
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap; 
		color: Color transparent; 
		yourself.
	aBlock value: container.
	
	self initializeWithTitle: aTitle content: ''.
	contentWrapperMorph removeMorph: self contentMorph. 
	self contentMorph: container.
	contentWrapperMorph addMorphBack: container