as yet unclassified
options

	| options cantrips spells |
	
	options := Dictionary new.
	cantrips := Dictionary new.
	spells := Dictionary new.
	
	"cantrips at: #barbarian put: #().
	cantrips at: #cleric put: #('Light' 'Guidance' 'Mending' 'Sacred Flame' 'Resistance' 'Spare the Dying' 'Thaumaturgy' 'Toll the Dread' 'Word of Radiance').
	cantrips at: #fighter put: #().
	cantrips at: #sorcerer put: #('Light' 'Acid Splash' 'Blade Ward' 'Chill Touch' 'Dancing Lights' 'Fire Bolt' 'Mending' 'Poison Spray' 'Ray of Frost' 'Shocking Grasp').
	cantrips at: #wizard put: #('Light' 'Acid Splash' 'Blade Ward' 'Chill Touch' 'Dancing Lights' 'Fire Bolt' 'Mending' 'Poison Spray' 'Ray of Frost' 'Shocking Grasp' 'Toll the Dread').
	
	spells at: #barbarian put: #().
	spells at: #cleric put: #('Bane' 'Bless' 'Command' 'Create or Destroy Water' 'Detect Evil and Good' 'Detect Magic' 'Guiding Bolt' 'Healing World' 'Inflict Wounds' 'Protection from Evil and Good').
	spells at: #fighter put: #().
	spells at: #sorcerer put: #('Detect Magic' 'Buzzing Bee' 'Charm Person' 'False Life' 'Fog Cloud' 'Grease' 'Ice Knife' 'Jump' 'Magic Missle').
	spells at: #wizard put: #('Alarm' 'Detect Magic' 'Protection from Evil and Good' 'Buzzing Bee' 'Charm Person' 'False Life' 'Fog Cloud' 'Grease' 'Ice Knife' 'Jump' 'Magic Missle')."
	
	options at: 1 put: #('barbarian' 'cleric' 'fighter' 'sorcerer' 'wizard').
	options at: 2 put: #('cantrip 1' 'cantrip 2' 'cantrip 3').
	options at: 3 put: #('spell 1' 'spell 2' 'spell 3').
	options at: 4 put: #('dwarf' 'elf' 'halfling' 'human' 'orc').
	options at: 5 put: #('strength' 'dexterity' 'constitution' 'intelligence' 'wisdom' 'charisma').
	
	^ options