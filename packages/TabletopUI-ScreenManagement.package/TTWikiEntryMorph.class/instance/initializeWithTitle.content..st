initialization
initializeWithTitle: aTitleString content: aContentString

	self titleMorph: (StringMorph contents: '> ', aTitleString).
	self titleMorph font: (TextStyle default fontOfSize: 16).
	self addMorphBack: titleMorph.
	
	self contentMorph: (StringMorph contents: '	', aContentString).
	self contentMorph font: (TextStyle default fontOfSize: 12)