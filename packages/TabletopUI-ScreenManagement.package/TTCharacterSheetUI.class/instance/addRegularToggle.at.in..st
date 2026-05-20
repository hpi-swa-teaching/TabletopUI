primitives
addRegularToggle: aSymbol at: aPoint in: anImageMorph

	self
		addToggle: aSymbol
		at: aPoint
		in: anImageMorph
		onForm: self toggleToggledForm
		offForm: self toggleUntoggledForm
		extent: self toggleExtent.
