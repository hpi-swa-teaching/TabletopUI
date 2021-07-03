screen management
continue

	(self game containsNameDuplicates) ifTrue: [
		self game throwNameDuplicateException]
	ifFalse: [
		(self game containsOverlongName) ifTrue: [
			self game throwOverlongNameException]
		ifFalse:[
			self window openGamemasterSelectionScreen]]