layout containers
layoutSpellColumn

	| form container |
	form := self spellColumnForm.
	container := Morph new 
		extent: (self spellColumnExtent);
		color: Color transparent.
	self 
		configureContainer: container withImage: form;
		buildSpellColumnIn: container.
	^ container