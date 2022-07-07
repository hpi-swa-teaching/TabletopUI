initialization
initializeMap

	self map: ((TTMap newWith: self characterAdministration players)
		subWindowManager: self subWindowManager;
		yourself)