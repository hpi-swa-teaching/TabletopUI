screen management
continue

	(self hasUniqueNames) ifTrue: [
		self game players: self players.
		self window openGamemasterSelectionScreen]
		ifFalse: [
            	Utilities 
                		informUser: 'Game cannot start. There are name duplicates.' 
                		during: [(Delay forSeconds: 2) wait]]