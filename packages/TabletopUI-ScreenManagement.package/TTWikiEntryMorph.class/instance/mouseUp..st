input handling
mouseUp: anEvent

	self isExpanded: self isExpanded not.
	self isExpanded ifTrue: [
		self addMorphBack: self contentWrapperMorph.
		self titleMorph contents: 'v ', (self titleMorph contents allButFirst: 2)]
	ifFalse: [
		self removeMorph: self contentWrapperMorph.
		self titleMorph contents: '> ', (self titleMorph contents allButFirst: 2)].

	self layoutChanged