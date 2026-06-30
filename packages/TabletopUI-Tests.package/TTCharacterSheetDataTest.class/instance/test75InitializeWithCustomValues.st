testing-initialization
test75InitializeWithCustomValues

	| choices |
	
	choices := Dictionary new
		at: #abilities put: (Dictionary new
			at: #strength put: 14;
			at: #dexterity put: 12;
			at: #constitution put: 10;
			at: #intelligence put: 8;
			at: #wisdom put: 2;
			at: #charisma put: 7;
			yourself);
		at: #race put: #elf;
		at: #cantrips put: #('Magic Missile' 'Die' 0);
		at: #spells put: #('Firestorm' 0 0);
		yourself.
		self characterSheet: (TTCharacterSheetData forTemplate: #default).
		self characterSheet initializeCustomizedCharacterWith: choices.
		self assert: self characterSheet strength equals: '14'.
		self assert: self characterSheet race equals: 'Elf'.
		self assert: self characterSheet spell0Slot1Name equals: 'Magic Missile'