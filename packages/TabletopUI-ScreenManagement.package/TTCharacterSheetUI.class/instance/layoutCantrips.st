layout containers
layoutCantrips

	^ self layoutContainerWithForm: self cantripsForm
		extent: self smallBlockExtent
		calling: [:container | self buildCantripsIn: container]