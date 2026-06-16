as yet unclassified
initializeWithTitle: aTitle castingTime: aCastingTime range: aRange components: aComponent duration: aDuration class: aClass description: aDescription

	self initializeWithTitle: aTitle buildContent: [:container |
		container addMorphBack: (self buildStatRow: 'Casting Time' value: aCastingTime).
		container addMorphBack: (self buildStatRow: 'Range'        value: aRange).
		container addMorphBack: (self buildStatRow: 'Components'   value: aComponent).
		container addMorphBack: (self buildStatRow: 'Duration'     value: aDuration).
		container addMorphBack: (self buildStatRow: 'Classes'       value: aClass).
		self addText: aDescription to: container]
