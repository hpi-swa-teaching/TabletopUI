view management
showFullFrameView: aMorph

	self viewContainer
		addMorph: aMorph
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1))