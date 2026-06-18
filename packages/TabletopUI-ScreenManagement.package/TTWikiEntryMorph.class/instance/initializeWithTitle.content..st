display
initializeWithTitle: aTitleString content: aContentString

	self 
		titleMorph: (self buildTitleMorph: aTitleString);
		addMorphBack: self titleMorph;
		contentMorph: (self buildContentMorph: aContentString).
		
	contentWrapperMorph := self buildContentWrapper.
	contentWrapperMorph addMorphBack: self contentMorph
