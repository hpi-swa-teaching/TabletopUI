layout containers
layoutHP

	^ self layoutContainerWithForm: self hpForm
		extent: self hpExtent
		calling: [:container | self buildHPIn: container]