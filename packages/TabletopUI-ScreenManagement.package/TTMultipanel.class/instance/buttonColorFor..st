button management
buttonColorFor: aButton

	^ self activeView = aButton
		ifTrue: [ self class selectedButtonColor ]
		ifFalse: [ self class unselectedButtonColor ]