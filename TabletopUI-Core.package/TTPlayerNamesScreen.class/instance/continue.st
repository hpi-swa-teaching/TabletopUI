screen management
continue

	(self game hasNameDuplicates) ifTrue: [
		Utilities 
                	informUser: 'Game cannot start. There are name duplicates.' 
              	during: [(Delay forSeconds: 2) wait]]
	ifFalse: [
		self window openGamemasterSelectionScreen]