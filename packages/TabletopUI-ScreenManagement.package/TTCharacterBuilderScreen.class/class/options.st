as yet unclassified
options

	| options |
	
	options := Dictionary new.
	
	options at: 1 put: #('barbarian' 'cleric' 'fighter' 'sorcerer' 'wizard').
	options at: 2 put: #('dwarf' 'elf' 'halfling' 'human' 'orc').
	options at: 3 put: #('strength' 'dexterity' 'constitution' 'intelligence' 'wisdom' 'charisma').
	
	^ options