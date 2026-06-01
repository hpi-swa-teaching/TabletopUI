view management
addCurrentView

	self activeView = #console ifTrue: [
		self viewContainer 
			addMorph: self console
			fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0.9)).
		
		^ self viewContainer 
			addMorph: self inputField
			fullFrame: (LayoutFrame fractions: (0 @ 0.9 corner: 1 @ 1))].

	self activeView = #players ifTrue: [
		^ self viewContainer
			addMorph: self playerSelectionMenu
			fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1))].
	
	self activeView = #wiki ifTrue: [
		^ self viewContainer
			addMorph: self wiki
			fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1))].
	
	 ^ self