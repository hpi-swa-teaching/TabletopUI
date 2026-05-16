layout containers
layoutHP

	| form container |
	form := self hpForm.
	container := Morph new 
		extent: (self hpExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildHPIn: container.
	^ container