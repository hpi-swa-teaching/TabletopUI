layout
layoutPerception

	| form container |
	form := self perceptionForm.
	container := Morph new 
		extent: (self perceptionExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildPerceptionIn: container.
	^ container