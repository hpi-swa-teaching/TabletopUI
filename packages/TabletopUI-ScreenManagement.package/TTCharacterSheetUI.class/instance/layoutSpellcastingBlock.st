layout containers
layoutSpellcastingBlock

	| form container |
	form := self spellcastingBlockForm.
	container := Morph new 
		extent: (self smallBlockExtent);
		color: Color transparent.
	self 
		configureContainer: container withImage: form;
		buildSpellcastingBlockIn: container.
	^ container