view management
addCurrentView

	self activeView = #console ifTrue: [
		self viewContainer addMorph: self console.
		^ self viewContainer addMorph: self inputField].

	self activeView = #players ifTrue: [
		^ self viewContainer addMorph: self playerSelectionMenu].
	
	self activeView = #monsters ifTrue: [
		^ self viewContainer addMorph: self monsterMenu].
	
	^ self