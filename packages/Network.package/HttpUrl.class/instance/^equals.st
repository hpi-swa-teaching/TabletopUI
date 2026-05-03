comparing
= anObject
	
	self == anObject ifTrue: [^ true].
	super = anObject ifFalse: [^ false].
	
	self realm = anObject realm ifFalse: [^ false].

	^ true