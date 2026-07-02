primitives
finalize: aTextMorph at: aPoint in: anImageMorph

	self
		textSettingsFor: aTextMorph;
		add: aTextMorph toUI: anImageMorph.
	aTextMorph position: aPoint