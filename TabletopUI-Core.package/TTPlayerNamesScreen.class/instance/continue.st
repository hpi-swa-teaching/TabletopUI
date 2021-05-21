screen management
continue

	self extractPlayerNames.
	(self hasUniqueNames) ifTrue: [
		self game players: self players.
		self window openGameScreen]
		ifFalse: [
            	Utilities 
                		informUser: 'Game cannot start. There name duplicates.' 
                		during: [(Delay forSeconds: 2) wait]]