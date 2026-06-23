layout containers
layoutStats

	^ self layoutContainerWithForm: self statsForm
		extent: self statsExtent
		calling: [:container | self buildStatsIn: container]