layout
layoutStats

	| form container |
	form := self statsForm.
	container := Morph new 
		extent: (self statsExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildStatsIn: container.
	^ container