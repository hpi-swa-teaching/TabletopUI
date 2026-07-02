constants
cantrips

	| cantrips |
	
	cantrips := Dictionary new.
	
	cantrips at: #barbarian put: #() asSortedCollection..
	cantrips at: #cleric put: #('0' 'Light' 'Guidance' 'Mending' 'Sacred Flame' 'Resistance' 'Spare the Dying' 'Thaumaturgy' 'Toll the Dread' 'Word of Radiance') asSortedCollection..
	cantrips at: #fighter put: #().
	cantrips at: #sorcerer put: #('0' 'Light' 'Acid Splash' 'Blade Ward' 'Chill Touch' 'Dancing Lights' 'Fire Bolt' 'Mending' 'Poison Spray' 'Ray of Frost' 'Shocking Grasp') asSortedCollection..
	cantrips at: #wizard put: #('0' 'Light' 'Acid Splash' 'Blade Ward' 'Chill Touch' 'Dancing Lights' 'Fire Bolt' 'Mending' 'Poison Spray' 'Ray of Frost' 'Shocking Grasp' 'Toll the Dread') asSortedCollection.
	
	^ cantrips