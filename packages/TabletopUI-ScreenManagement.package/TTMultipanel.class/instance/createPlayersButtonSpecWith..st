button management
createPlayersButtonSpecWith: aToolBuilder
	
	^aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0.2 @ 0 corner: 0.4 @ 1);
		label: 'Players';
		action: #openPlayers;
		color: #playersColor;
		yourself.