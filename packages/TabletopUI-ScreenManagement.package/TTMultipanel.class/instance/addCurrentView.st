view management
addCurrentView

	self activeView = #console ifTrue: [
		self viewContainer addMorph: self actionLog.
		^ self viewContainer addMorph: self inputField].

	self activeView = #players ifTrue: [
		^ self viewContainer addMorph: self playerSelectionMenu].
	
	^ self