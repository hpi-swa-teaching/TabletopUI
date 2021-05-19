accessing
nameText: aText

	(aText asString matchesRegex: '^[[A-Z][a-z]]+[0-9]*$') ifTrue: [
		self name: aText asString]
		ifFalse: [
			Utilities 
				informUser: 'Level names should only contain letters and numbers.' 
				during: [(Delay forSeconds: 2) wait]].

	self changed: #name