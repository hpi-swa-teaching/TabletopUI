accessing
setIndex: aNumber
		
	self
		removePreviousBackground;
		selectedIndex: aNumber;
		changed: #selectedIndex;
		updateBackground