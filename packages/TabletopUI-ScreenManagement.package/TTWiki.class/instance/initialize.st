initialization
initialize

	super initialize.
	
	self items: OrderedCollection new.
	self spells: OrderedCollection new.
	self monsters: OrderedCollection new.
	self subclasses: OrderedCollection new.
	self initializeLayout.
	self addEntries.
	self buildCategories