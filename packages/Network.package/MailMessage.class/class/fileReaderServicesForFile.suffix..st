file services
fileReaderServicesForFile: fullName suffix: suffix

	^ suffix = 'eml'
		ifTrue: [self services]
		ifFalse: [#()]