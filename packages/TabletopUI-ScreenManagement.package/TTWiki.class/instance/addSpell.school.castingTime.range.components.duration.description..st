as yet unclassified
addSpell: aTitle school: aSchool castingTime: aTime range: aRange components: aComponent duration: aDuration description: aDescription
    
	| entry |
    	entry := TTSpellEntryMorph new
	initializeWithTitle: aTitle school: aSchool castingTime: aTime range: aRange components: aComponent duration: aDuration description: aDescription; yourself.
	self addMorphBack: entry