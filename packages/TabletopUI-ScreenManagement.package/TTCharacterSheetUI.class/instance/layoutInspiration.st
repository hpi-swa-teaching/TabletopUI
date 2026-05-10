layout
layoutInspiration

	| form container |
	form := self inspirationUntoggledForm.
	container := Morph new 
		extent: (self inspirationExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildInspirationIn: container.
	^ container