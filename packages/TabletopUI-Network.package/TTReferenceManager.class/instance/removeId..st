accessing
removeId: anId

	| objectKey |
	self table removeKey: anId.
	
	objectKey := self objectToIdTable keyAtValue: anId ifAbsent: [nil].
	
	objectKey ifNotNil: [self objectToIdTable removeKey: objectKey]