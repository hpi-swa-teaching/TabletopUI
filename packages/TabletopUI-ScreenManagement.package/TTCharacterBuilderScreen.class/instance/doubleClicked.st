as yet unclassified
doubleClicked

	self currentStep = 2
		ifTrue: [Transcript show: 'Cantrip auswählen'; cr].
	self currentStep = 3
		ifTrue: [Transcript show: 'Spell Level 1 auswählen'; cr].
	self currentStep = 5
		ifTrue: [self setAbilities].