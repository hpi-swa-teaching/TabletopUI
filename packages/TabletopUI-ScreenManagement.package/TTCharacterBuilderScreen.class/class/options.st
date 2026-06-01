as yet unclassified
options

	| options |
	
	options := Dictionary new.
	
	options at: 1 put: #('Barbarian' 'Cleric' 'Fighter' 'Sorcerer' 'Wizard').
	options at: 2 put: #('Dwarf' 'Elf' 'Halfling' 'Human' 'Orc').
	options at: 3 put: #('Strength' 'Dexterity' 'Constitution' 'Intelligence' 'Wisdom' 'Charisma').
	
	^ options