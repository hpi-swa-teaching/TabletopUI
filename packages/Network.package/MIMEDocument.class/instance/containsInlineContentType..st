testing
containsInlineContentType: type

	self contentType = type ifTrue: [^ true].
	
	self isMultipart ifTrue: [
		self subType = 'related' ifTrue: [
			^ self parts first containsInlineContentType: type].
		
		^ self parts anySatisfy: [:part |
			part contentDisposition = #inline and: [
				part containsInlineContentType: type]]].
	
	^ false