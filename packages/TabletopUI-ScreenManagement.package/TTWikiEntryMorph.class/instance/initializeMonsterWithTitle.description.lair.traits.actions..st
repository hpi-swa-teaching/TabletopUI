entry categories
initializeMonsterWithTitle: aTitle description: aDescription lair: aLairCollection traits: aTraitsCollection actions: anActionsCollection

	self initializeCategoryWithTitle: aTitle buildContent: [:container |
		self addText: aDescription to: container.
		self addSection: '--- Lair ---' withItems: aLairCollection to: container.
		self addSection: '--- Traits ---' withItems: aTraitsCollection to: container.
		self addSection: '--- Actions ---' withItems: anActionsCollection to: container]
