initialization
initializeCloseButton

	^ self addButton: #closeSheet
		form: self closeButtonForm
		sized: self buttonExtent
		at: 0 @ 0
		in: self sheet