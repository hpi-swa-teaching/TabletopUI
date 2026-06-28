display
initializeWithTitle: aTitleString content: aContentString

	self 
		titleMorph: (self buildTitleMorph: aTitleString);
		addMorphBack: self titleMorph;
		contentMorph: (self buildContentMorph: aContentString).
		
	self contentWrapperMorph: self buildContentWrapper.
	self contentWrapperMorph addMorphBack: self contentMorph
