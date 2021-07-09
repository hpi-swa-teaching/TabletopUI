running
setUpNPCs

	| NPC1 NPC2 |
	
	NPC1 := TTCharacter newWithName: 'Niko' role: #npc.
	NPC2 := TTCharacter newWithName: 'Nina' role: #npc.
	
	^ { NPC1 . NPC2 } asOrderedCollection