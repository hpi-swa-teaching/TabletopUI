layout containers
layoutCenterColumn

	| form container |
	form := self centerColumnForm.
	container := Morph new 
		extent: (self columnExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildCenterColumnIn: container.
	^ container