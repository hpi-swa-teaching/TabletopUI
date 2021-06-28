background editing
updateBackgroundForIndex: aNumber
		
	self
		removePreviousBackground;
		selectedIndex: aNumber;
		changed: #selectedIndex;
		setNewBackground