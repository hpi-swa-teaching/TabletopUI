accessing - identity
spellcastingClassName

	(self class spellcastingClassesNames includes: self className)
		ifTrue: [^ self className]
		ifFalse: [^ 'None']