initialization
initializeArrow

	| form container |
	form := self arrowForm.
	container := Morph new
		extent: self arrowExtent;
		color: Color transparent.
	self configureContainer: container withImage: form.
	container on: #click send: #nextPage to: self.
	^ container