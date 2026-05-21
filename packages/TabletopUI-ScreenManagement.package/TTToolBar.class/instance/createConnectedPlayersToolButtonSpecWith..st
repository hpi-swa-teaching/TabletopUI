toolbuilder
createConnectedPlayersToolButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.3 corner: 1 @ 0.4);
		label: 'Players';
		action: #toggleConnectedPlayersToolDisplay;
		color: #connectedPlayersToolButtonColor;
		yourself