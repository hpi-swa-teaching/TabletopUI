button management
buttonColorFor: aButton

	^ self activeView = aButton
		ifTrue: [Color lightBlue.]
		ifFalse: [Color veryVeryLightGray.]