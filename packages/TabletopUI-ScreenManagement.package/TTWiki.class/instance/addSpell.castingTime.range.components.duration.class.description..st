as yet unclassified
addSpell: aTitle castingTime: aTime range: aRange components: aComponent duration: aDuration class: aClass description: aDescription
    
	| entry |
    	entry := TTSpellEntryMorph new
	initializeWithTitle: aTitle castingTime: aTime range: aRange components: aComponent duration: aDuration class: aClass description: aDescription; yourself.
	spells add: entry