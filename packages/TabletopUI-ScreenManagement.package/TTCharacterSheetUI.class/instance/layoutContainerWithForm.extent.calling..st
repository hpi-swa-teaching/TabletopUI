layout containers
layoutContainerWithForm: aForm extent: anExtent calling: aBlock

	| container |
	container := Morph new 
		extent: anExtent;
		color: Color transparent;
		yourself.
	self configureContainer: container withImage: (aForm scaledToSize: anExtent).
	aBlock value: container.
	^ container