layout containers
layoutCantrips

	| form container |
	form := self cantripsForm.
	container := Morph new 
		extent: (self smallBlockExtent);
		color: Color transparent.
	self 
		configureContainer: container withImage: form;
		buildCantripsIn: container.
	^ container