primitives
addInspirationToggle: aSymbol at: aPoint in: anImageMorph

	self
		addToggle: aSymbol
		at: aPoint
		in: anImageMorph
		onForm: self inspirationToggledForm
		offForm: self inspirationUntoggledForm
		extent: self inspirationExtent.
