constants
options

	| options |
	
	options := Dictionary new.
	
	options at: #class put: #('barbarian' 'cleric' 'fighter' 'sorcerer' 'wizard').
	options at: #cantrips put: #('cantrip1' 'cantrip2' 'cantrip3').
	options at: #spells put: #('spell1' 'spell2' 'spell3').
	options at: #race put: #('dwarf' 'elf' 'halfling' 'human' 'orc').
	options at: #abilities put: #('strength' 'dexterity' 'constitution' 'intelligence' 'wisdom' 'charisma').
	
	^ options