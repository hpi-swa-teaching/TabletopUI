background editing
updateBackgroundForIndex: aNumber
		
	self
		removeCurrentBackground;
		selectedIndex: aNumber;
		changed: #selectedIndex;
		setNewBackground