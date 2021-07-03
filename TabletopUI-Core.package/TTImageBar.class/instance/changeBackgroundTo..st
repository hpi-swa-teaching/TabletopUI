background editing
changeBackgroundTo: aNumber
		
	self
		removeCurrentBackground;
		selectedIndex: aNumber;
		changed: #selectedIndex;
		setNewBackground