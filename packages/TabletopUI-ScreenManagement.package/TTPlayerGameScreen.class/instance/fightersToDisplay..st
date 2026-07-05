accessing
fightersToDisplay: aContext

	^ self characterAdministration players
		select: [:player |
			aContext fightingPlayers includes: player name]