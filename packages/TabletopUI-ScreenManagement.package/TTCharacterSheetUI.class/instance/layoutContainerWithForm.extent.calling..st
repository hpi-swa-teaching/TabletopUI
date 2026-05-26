layout containers
layoutContainerWithForm: aForm extent: anExtent calling: aBlock

	| container |
	container := Morph new 
		extent: anExtent;
		color: Color transparent.
	self configureContainer: container withImage: aForm.
	aBlock value: container.
	^ container