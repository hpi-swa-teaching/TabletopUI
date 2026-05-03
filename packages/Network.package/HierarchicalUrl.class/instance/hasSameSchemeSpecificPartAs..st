comparing
hasSameSchemeSpecificPartAs: anotherUrl

	self authority = anotherUrl authority ifFalse: [^ false].
	self path = anotherUrl path ifFalse: [^ false].
	self query = anotherUrl query ifFalse: [^ false].
	self port = anotherUrl port ifFalse: [^ false].
	self username = anotherUrl username ifFalse: [^ false].
	self password = anotherUrl password ifFalse: [^ false].
	^ true