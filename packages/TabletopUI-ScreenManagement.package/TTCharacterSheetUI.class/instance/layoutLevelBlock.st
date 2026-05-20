layout containers
layoutLevelBlock

	| form container |
	form := self levelBlockForm.
	container := Morph new 
		extent: (self smallBlockExtent);
		color: Color transparent.
	self
		configureContainer: container withImage: form;
		buildLevelBlockIn: container.
	^ container