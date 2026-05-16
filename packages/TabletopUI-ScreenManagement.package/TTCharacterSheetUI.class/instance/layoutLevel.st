layout containers
layoutLevel

	| form container |
	form := self levelForm.
	container := Morph new 
		extent: (self levelExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildLevelIn: container.
	^ container