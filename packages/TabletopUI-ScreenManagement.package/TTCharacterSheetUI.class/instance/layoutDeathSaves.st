layout
layoutDeathSaves

	| form container |
	form := self deathSavesForm.
	container := Morph new 
		extent: (self deathSavesExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildDeathSavesIn: container.
	^ container