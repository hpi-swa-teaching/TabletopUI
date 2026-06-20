entry categories
initializeSpellWithTitle: aTitle castingTime: aCastingTime range: aRange components: aComponent duration: aDuration class: aClass description: aDescription

	self initializeCategoryWithTitle: aTitle buildContent: [:container |
		container addMorphBack: (self buildRow: 'Casting Time' value: aCastingTime).
		container addMorphBack: (self buildRow: 'Range'        value: aRange).
		container addMorphBack: (self buildRow: 'Components'   value: aComponent).
		container addMorphBack: (self buildRow: 'Duration'     value: aDuration).
		container addMorphBack: (self buildRow: 'Classes'       value: aClass).
		self addText: aDescription to: container]
