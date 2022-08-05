actions
modifierAsString

	self modifier < 0 ifTrue: [
		^ self modifier asString]
	ifFalse: [
		^ '+', self modifier asString]