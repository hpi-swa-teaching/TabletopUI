accessing
setIndex: aNumber

	(aNumber > 0) ifTrue: [
		self 
			selectedIndex: aNumber;
			changed: #selectedIndex]