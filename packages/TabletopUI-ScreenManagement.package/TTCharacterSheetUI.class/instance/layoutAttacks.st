layout containers
layoutAttacks

	^ self layoutContainerWithForm: self attacksForm
		extent: self attacksExtent
		calling: [:container | self buildAttacksIn: container]