layout containers
layoutInfoBlock

	| form container |
	form := self infoBlockForm.
	container := Morph new 
		extent: (self largeBlockExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildInfoBlockIn: container.
	^ container