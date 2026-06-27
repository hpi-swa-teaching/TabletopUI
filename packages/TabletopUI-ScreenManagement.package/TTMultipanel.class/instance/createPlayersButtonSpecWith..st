button management
createPlayersButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (self buttonWidth @ 0 corner: self buttonWidth * 2 @ 1);
		label: 'Players';
		action: #openPlayers;
		color: #playersColor;
		yourself