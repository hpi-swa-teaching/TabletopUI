layout containers
layoutSpellcastingBlock

	^ self layoutContainerWithForm: self spellcastingBlockForm
		extent: self smallBlockExtent
		calling: [:container | self buildSpellcastingBlockIn: container]