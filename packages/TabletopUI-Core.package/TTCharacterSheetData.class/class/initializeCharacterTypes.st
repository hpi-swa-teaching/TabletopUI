as yet unclassified
initializeCharacterTypes

	characterTypes := Dictionary new.
	characterTypes at: #default put: (Dictionary new).
	(characterTypes at: #default)
		at: #armorClass put: 10;
		at: #speed put: 30;
		at: #strength put: 10;
		at: #dexterity put: 10;
		at: #constitution put: 10;
		at: #intelligence put: 10;
		at: #wisdom put: 10;
		at: #charisma put: 10;
		at: #maxHP put: 20;		
		yourself.
	characterTypes at: #wizard put: (Dictionary new).
	(characterTypes at: #wizard)
		at: #armorClass put: 12;
		at: #speed put: 9;
		at: #strength put: 8;
		at: #dexterity put: 14;
		at: #constitution put: 15;
		at: #intelligence put: 16;
		at: #wisdom put: 13;
		at: #charisma put: 8;
		at: #maxHP put: 8;		
		yourself.
	characterTypes at: #cleric put: (Dictionary new).
	(characterTypes at: #cleric)
		at: #armorClass put: 16;
		at: #speed put: 7.5;
		at: #strength put: 14;
		at: #dexterity put: 10;
		at: #constitution put: 16;
		at: #intelligence put: 8;
		at: #wisdom put: 16;
		at: #charisma put: 10;
		at: #maxHP put: 12;		
		yourself.
	characterTypes at: #fighter put: (Dictionary new).
	(characterTypes at: #fighter)
		at: #armorClass put: 18;
		at: #speed put: 9;
		at: #strength put: 17;
		at: #dexterity put: 12;
		at: #constitution put: 15;
		at: #intelligence put: 8;
		at: #wisdom put: 12;
		at: #charisma put: 10;
		at: #maxHP put: 12;		
		yourself.