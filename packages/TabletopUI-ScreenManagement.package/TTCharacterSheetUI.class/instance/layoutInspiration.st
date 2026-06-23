layout containers
layoutInspiration

	^ self layoutContainerWithForm: self inspirationUntoggledForm
		extent: self inspirationExtent
		calling: [:container | self buildInspirationIn: container]