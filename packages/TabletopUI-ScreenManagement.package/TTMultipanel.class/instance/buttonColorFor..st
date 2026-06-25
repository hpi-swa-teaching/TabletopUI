button management
buttonColorFor: aButton
	
	self activeView = aButton
		ifTrue: [^ self selectedButtonColor ]
		ifFalse: [ ^ self unselectedButtonColor ]