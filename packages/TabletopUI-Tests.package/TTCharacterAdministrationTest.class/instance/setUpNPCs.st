running
setUpNPCs

	| npc1 npc2 |
	
	npc1 := TTCharacter newWithName: 'Niko' role: TTCharacter npc.
	npc2 := TTCharacter newWithName: 'Nina' role: TTCharacter npc.
	
	^ { npc1 . npc2 } asOrderedCollection