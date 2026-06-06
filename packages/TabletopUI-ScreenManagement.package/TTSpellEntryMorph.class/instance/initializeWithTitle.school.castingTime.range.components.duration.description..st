as yet unclassified
initializeWithTitle: aTitle school: aSchool castingTime: aCastingTime range: aRange components: aComponent duration: aDuration description: aDescription

	self initializeWithTitle: aTitle buildContent: [:container |
		container addMorphBack: (self buildStatRow: 'School'       value: aSchool).
		container addMorphBack: (self buildStatRow: 'Casting Time' value: aCastingTime).
		container addMorphBack: (self buildStatRow: 'Range'        value: aRange).
		container addMorphBack: (self buildStatRow: 'Components'   value: aComponent).
		container addMorphBack: (self buildStatRow: 'Duration'     value: aDuration).
		self addText: aDescription to: container]
