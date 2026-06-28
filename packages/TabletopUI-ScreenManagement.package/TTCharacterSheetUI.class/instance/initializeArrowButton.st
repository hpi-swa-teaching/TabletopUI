initialization
initializeArrowButton

	^ self addButton: #nextPage
		form: self arrowButtonForm
		sized: self buttonExtent
		at: self arrowButtonPosition
		in: self sheet