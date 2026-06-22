layout containers
layoutLevelBlock

	^ self layoutContainerWithForm: self levelBlockForm
		extent: self smallBlockExtent
		calling: [:container | self buildLevelBlockIn: container]