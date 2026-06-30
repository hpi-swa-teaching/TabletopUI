testing
test09PlayerGameScreenDoesNotCreateNPC

	| screen npc |

	npc := TTCharacter newWithName: 'orc' role: TTCharacter npc.
	self window
		setAsPlayer;
		openGameScreen.
	screen := self window contents first model.
	screen createNPC: npc.
	self assert: self window characterAdministration npcs isEmpty