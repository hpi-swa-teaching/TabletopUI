layout containers
layoutSavingThrows

	| form container |
	form := self savingThrowsForm.
	container := Morph new 
		extent: (self savingThrowsExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildSavingThrowsIn: container.
	^ container