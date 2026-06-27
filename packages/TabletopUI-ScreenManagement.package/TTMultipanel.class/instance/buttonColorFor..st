button management
buttonColorFor: aViewSymbol
	
	self activeView = aViewSymbol
		ifTrue: [^ self selectedButtonColor ]
		ifFalse: [ ^ self unselectedButtonColor ]