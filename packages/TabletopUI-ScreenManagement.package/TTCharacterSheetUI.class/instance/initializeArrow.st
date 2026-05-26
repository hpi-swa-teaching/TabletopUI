initialization
initializeArrow

	^ self addButton: #nextPage
		form: self arrowForm
		sized: self buttonExtent
		at: 595 @ 865
		in: self sheet.