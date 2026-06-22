primitives
finalize: aTextMorph at: aPoint in: anImageMorph

	self
		textSettingsFor: aTextMorph;
		add: aTextMorph ToUI: anImageMorph.
	aTextMorph position: aPoint