accessing
isValid

	self address = self emptyAddress ifTrue: [^ false].
	self port = self emptyPort ifTrue: [^ false].
	^ true