comparing
hasSameSchemeSpecificPartAs: anotherUrl
				
	self host = anotherUrl host ifFalse: [^ false].
	self path = anotherUrl path ifFalse: [^ false].
	^ true