running
setUpNPCs

	| NPC1 NPC2 |
	
	NPC1 := TTCharacter newWithName: 'Niko' role: TTCharacter npc.
	NPC2 := TTCharacter newWithName: 'Nina' role: TTCharacter npc.
	
	^ { NPC1 . NPC2 } asOrderedCollection