interactions
viewWithLabel: aString

	self containsViewableImage ifTrue: [^ self viewImage].
	^ self bodyTextFormattedRich editWithLabel: aString