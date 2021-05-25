toolbuilder
buildWith: aToolBuilder
		
	^ self buildWith: aToolBuilder children: (
		self createLayoutWith: aToolBuilder forPlayerCount: (self game playerCount))