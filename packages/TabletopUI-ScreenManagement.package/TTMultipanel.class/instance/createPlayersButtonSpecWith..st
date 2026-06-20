button management
createPlayersButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0.25 @ 0 corner: 0.5 @ 1);
		label: 'Players';
		action: #openPlayers;
		color: #playersColor;
		yourself