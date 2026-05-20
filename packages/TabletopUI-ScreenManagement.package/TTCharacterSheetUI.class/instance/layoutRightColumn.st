layout containers
layoutRightColumn

	| form container |
	form := self rightColumnForm.
	container := Morph new 
		extent: (self columnExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildRightColumnIn: container.
	^ container