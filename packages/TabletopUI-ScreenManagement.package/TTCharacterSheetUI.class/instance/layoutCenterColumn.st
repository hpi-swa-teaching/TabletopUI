layout containers
layoutCenterColumn

	^ self layoutContainerWithForm: self centerColumnForm
		extent: self columnExtent
		calling: [:container | self buildCenterColumnIn: container]