testing-initialization
test75InitializeWithCustomValues

	| choices |
	
	choices := Dictionary new
		at: #abilities put: (Dictionary new
			at: #strength put: 13;
			at: #dexterity put: 12;
			at: #constitution put: 10;
			at: #intelligence put: 8;
			at: #wisdom put: 14;
			at: #charisma put: 15;
			yourself);
		at: #race put: #elf;
		at: #class put: #cleric;
		at: #cantrips put: #('Magic Missile' 'Die' 0);
		at: #spells put: #('Firestorm' 0 0);
		yourself.
		self characterSheet: (TTCharacterSheetData forTemplate: (choices at: #class) asSymbol).
		self characterSheet initializeCustomizedCharacterWith: choices.
		self assert: self characterSheet strength equals: '13'.
		self assert: self characterSheet race equals: 'Elf'.
		self assert: self characterSheet spell0Slot1Name equals: 'Magic Missile'