layout containers
layoutContainerWithForm: aForm extent: anExtent calling: aBlock

	| container |
	Transcript show: 'use this to refactor'.
	container := Morph new 
		extent: anExtent;
		color: Color transparent.
	self configureContainer: container withImage: aForm.
	aBlock value: container.
	^ container