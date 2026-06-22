primitives
addButton: aSymbol form: aForm sized: anExtent at: aPoint in: anImageMorph

	| container |
	container := self layoutContainerWithForm: aForm
		extent: anExtent
		calling: [:argument | ].
	container on: #click
		send: aSymbol
		to: self.
	anImageMorph addMorph: container.
	container position: aPoint.
	^ container
	
