accessing
initializeWithTitle: aTitle buildContent: aBlock

	| container |
	self initializeWithTitle: aTitle content: ''.
	container := Morph new changeTableLayout; listDirection: #topToBottom; hResizing: #spaceFill; vResizing: #shrinkWrap; color: Color transparent; yourself.
	aBlock value: container.
	contentWrapperMorph removeMorph: self contentMorph.
	self contentMorph: container.
	contentWrapperMorph addMorphBack: container
