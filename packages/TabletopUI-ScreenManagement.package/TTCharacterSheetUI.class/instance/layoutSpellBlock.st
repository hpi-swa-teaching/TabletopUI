layout containers
layoutSpellBlock

	^ self layoutContainerWithForm: self spellBlockForm
		extent: self spellBlockExtent
		calling: [:container | self buildSpellBlockIn: container]