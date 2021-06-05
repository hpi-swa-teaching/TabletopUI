toolbuilder
createMapPaneSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableScrollPaneSpec new
		morph: (TTMap newWithPlayers: self game players);
		hScrollBarPolicy: #always;
		vScrollBarPolicy: #always;
		borderWidth: 0;
		yourself
	