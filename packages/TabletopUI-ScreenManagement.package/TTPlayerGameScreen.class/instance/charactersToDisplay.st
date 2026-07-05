accessing
charactersToDisplay

	^ self characterAdministration players
		select: [:player |
			player isGamemaster not]