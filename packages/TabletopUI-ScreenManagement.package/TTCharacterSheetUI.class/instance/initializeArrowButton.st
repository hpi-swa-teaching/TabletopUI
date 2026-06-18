initialization
initializeArrowButton

	^ self addButton: #nextPage
		form: self arrowButtonForm
		sized: self buttonExtent
		at: 595 @ 865
		in: self sheet.