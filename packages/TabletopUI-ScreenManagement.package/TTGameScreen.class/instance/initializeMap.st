initialization
initializeMap

	self map: (TTMap newWith: self characterAdministration players).
	self addDependent: self map
		