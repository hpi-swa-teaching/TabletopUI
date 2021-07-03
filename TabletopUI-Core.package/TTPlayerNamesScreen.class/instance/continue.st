screen management
continue

	(self game containsNameDuplicates) ifTrue: [
		self game throwNameDuplicateException]
	ifFalse: [
		(self game containsInvalidNameLength) ifTrue: [
			self game throwInvalidNameLengthException]
		ifFalse:[
			self window openGamemasterSelectionScreen]]