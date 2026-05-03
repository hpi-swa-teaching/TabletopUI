comparing
hasSameSchemeSpecificPartAs: anotherUrl
	
	(super hasSameSchemeSpecificPartAs: anotherUrl) ifFalse: [^ false].
	self realm = anotherUrl realm ifFalse: [^ false].
	^ true