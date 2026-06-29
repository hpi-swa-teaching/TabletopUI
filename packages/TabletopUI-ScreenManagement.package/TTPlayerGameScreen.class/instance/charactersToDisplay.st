npc creation
charactersToDisplay

	^ self characterAdministration players
		select: [:player |
			player name = self window owningPlayerName]