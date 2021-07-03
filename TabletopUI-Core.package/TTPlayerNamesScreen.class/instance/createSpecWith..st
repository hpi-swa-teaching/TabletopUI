toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableScrollPaneSpec new
		morph: (self buildInputFieldsWith: aToolBuilder);
		hScrollBarPolicy: #never;
		vScrollBarPolicy: #always;
		borderWidth: 0;
		yourself