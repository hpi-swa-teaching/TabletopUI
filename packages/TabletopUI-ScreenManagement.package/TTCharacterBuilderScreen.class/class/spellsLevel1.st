as yet unclassified
spellsLevel1

	| spells |
	
	spells := Dictionary new.
	
	spells at: #barbarian put: #() asSortedCollection.
	spells at: #cleric put: #('0' 'Bane' 'Bless' 'Command' 'Create or Destroy Water' 'Detect Evil and Good' 'Detect Magic' 'Guiding Bolt' 'Healing World' 'Inflict Wounds' 'Protection from Evil and Good') asSortedCollection.
	spells at: #fighter put: #() asSortedCollection..
	spells at: #sorcerer put: #('0' 'Detect Magic' 'Buzzing Bee' 'Charm Person' 'False Life' 'Fog Cloud' 'Grease' 'Ice Knife' 'Jump' 'Magic Missle') asSortedCollection..
	spells at: #wizard put: #('0' 'Alarm' 'Detect Magic' 'Protection from Evil and Good' 'Buzzing Bee' 'Charm Person' 'False Life' 'Fog Cloud' 'Grease' 'Ice Knife' 'Jump' 'Magic Missle') asSortedCollection..
	
	^ spells