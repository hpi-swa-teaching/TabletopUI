layout containers
layoutSpellBlock

	| form container |
	form := self spellBlockForm.
	container := Morph new 
		extent: (self spellBlockExtent);
		color: Color transparent.
	self 
		configureContainer: container withImage: form;
		buildSpellBlockIn: container.
	^ container