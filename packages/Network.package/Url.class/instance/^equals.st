comparing
= anotherUrl
	
	self == anotherUrl ifTrue: [^ true].
	self class == anotherUrl class ifFalse: [^ false].
	
	self schemeName = anotherUrl schemeName ifFalse: [^ false].
	(self hasSameSchemeSpecificPartAs: anotherUrl) ifFalse: [^ false].
	self fragment = anotherUrl fragment ifFalse: [ ^ false ].
	
	^ true