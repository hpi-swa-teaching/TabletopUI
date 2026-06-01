as yet unclassified
mouseUp: anEvent
	
	self isExpanded: isExpanded not.
	
	self isExpanded
		ifTrue: [
			self addMorphBack: contentMorph.
			self titleMorph contents: 'v ', (self titleMorph contents allButFirst: 2)]
		ifFalse: [
			self removeMorph: contentMorph.
			self titleMorph contents: '> ', (self titleMorph contents allButFirst: 2)].
		
	self owner layoutChanged