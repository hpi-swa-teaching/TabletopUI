display
addSpell: aTitle castingTime: aTime range: aRange components: aComponent duration: aDuration class: aClass description: aDescription
    
	| entry |
    	entry := TTWikiEntryMorph new
	initializeSpellWithTitle: aTitle castingTime: aTime range: aRange components: aComponent duration: aDuration class: aClass description: aDescription; yourself.
	self spells add: entry