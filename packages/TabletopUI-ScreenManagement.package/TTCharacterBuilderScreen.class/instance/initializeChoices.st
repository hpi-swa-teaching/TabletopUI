as yet unclassified
initializeChoices

	self choices at: #class put: #barbarian.
	self choices at: #cantrips put: Dictionary new.
	(self choices at: #cantrips)
		at: #cantrip1 put: 0;
		at: #cantrip2 put: 0;
		at: #cantrip3 put: 0.
	self choices at: #spells put: Dictionary new.
	(self choices at: #spells)
		at: #spell1 put: 0;
		at: #spell2 put: 0;
		at: #spell3 put: 0.
	self choices at: #race put: #dwarf.
	self choices at: #abilities put: Dictionary new.
	(self choices at: #abilities)
		at: #strength put: 0;
		at: #dexterity put: 0;
		at: #constitution put: 0;
		at: #intelligence put: 0;
		at: #wisdom put: 0;
		at: #charisma put: 0