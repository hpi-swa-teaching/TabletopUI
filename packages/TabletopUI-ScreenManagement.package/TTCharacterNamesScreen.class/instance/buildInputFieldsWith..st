toolbuilder
buildInputFieldsWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: (
		self createLayoutWith: aToolBuilder 
			forPlayerCount: (self characterAdministration playerCount))