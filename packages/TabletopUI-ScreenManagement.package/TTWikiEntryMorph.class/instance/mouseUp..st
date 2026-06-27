input handling
mouseUp: anEvent

	self isExpanded: isExpanded not.
	self isExpanded ifTrue: [
		self addMorphBack: contentWrapperMorph.
		self titleMorph contents: 'v ', (self titleMorph contents allButFirst: 2)]
	ifFalse: [
		self removeMorph: contentWrapperMorph.
		self titleMorph contents: '> ', (self titleMorph contents allButFirst: 2)].

	self layoutChanged