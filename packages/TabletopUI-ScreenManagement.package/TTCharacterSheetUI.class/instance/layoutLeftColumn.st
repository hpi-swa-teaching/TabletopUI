layout containers
layoutLeftColumn

	^ self layoutContainerWithForm: self leftColumnForm
		extent: self columnExtent
		calling: [:container | self buildLeftColumnIn: container]