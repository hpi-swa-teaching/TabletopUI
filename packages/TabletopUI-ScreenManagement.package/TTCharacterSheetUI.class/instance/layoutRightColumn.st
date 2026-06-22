layout containers
layoutRightColumn

	^ self layoutContainerWithForm: self rightColumnForm
		extent: self columnExtent
		calling: [:container | self buildRightColumnIn: container]