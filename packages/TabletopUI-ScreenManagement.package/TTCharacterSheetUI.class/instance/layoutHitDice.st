layout containers
layoutHitDice

	^ self layoutContainerWithForm: self hitDiceForm
		extent: self hitDiceExtent
		calling: [:container | self buildHitDiceIn: container]