layout containers
layoutSpellColumn

	^ self layoutContainerWithForm: self spellColumnForm
		extent: self spellColumnExtent
		calling: [:container | self buildSpellColumnIn: container]