initialization
initializeMap

	self map: (TTMap newWith: (self characterAdministration players) and: (self characterAdministration npcs)).
	self addDependent: self map.
	self map addDependent: self window serverSessionManager
		