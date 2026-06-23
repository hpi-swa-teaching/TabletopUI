layout containers
layoutInfoBlock

	^ self layoutContainerWithForm: self infoBlockForm
		extent: self largeBlockExtent
		calling: [:container | self buildInfoBlockIn: container]