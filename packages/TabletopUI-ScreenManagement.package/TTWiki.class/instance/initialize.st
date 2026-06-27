initialization
initialize

	super initialize.
	
	items := OrderedCollection new.
	spells := OrderedCollection new.
	monsters := OrderedCollection new.
	subclasses := OrderedCollection new.
	self initializeLayout.
	self addEntries.
	self buildCategories