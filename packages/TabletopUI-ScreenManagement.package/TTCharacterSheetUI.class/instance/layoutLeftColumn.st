layout containers
layoutLeftColumn

	| form container |
	form := self leftColumnForm.
	container := Morph new 
		extent: (self columnExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildLeftColumnIn: container.
	^ container