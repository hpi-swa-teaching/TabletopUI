layout containers
layoutName

	| form container |
	form := self nameForm.
	container := Morph new 
		extent: (self nameExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildNameIn: container.
	^ container