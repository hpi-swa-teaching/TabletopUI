primitives
addToggle: aSymbol at: aPoint in: anImageMorph onForm: anOnForm offForm: anOffForm extent: anExtent

	| toggleMorph |
	toggleMorph := TTToggleImageMorph new
		on: self model
		get: aSymbol
		set: (aSymbol , ':') asSymbol
		onForm: anOnForm
		offForm: anOffForm;
		extent: anExtent.
	anImageMorph addMorph: toggleMorph.
	toggleMorph position: aPoint.