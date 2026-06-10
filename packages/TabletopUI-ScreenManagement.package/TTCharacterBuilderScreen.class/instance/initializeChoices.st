as yet unclassified
initializeChoices

	self choices at: 1 put: 1.
	self choices at: 2 put: 1.
	self choices at: 3 put: Dictionary new.
	(self choices at: 3)
		at: #strength put: 0;
		at: #dexterity put: 0;
		at: #constitution put: 0;
		at: #intelligence put: 0;
		at: #wisdom put: 0;
		at: #charisma put: 0.