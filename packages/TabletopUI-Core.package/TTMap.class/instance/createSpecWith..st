accessing
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableScrollPaneSpec new
		morph: self;
		hScrollBarPolicy: #always;
		vScrollBarPolicy: #always;
		borderWidth: 0;
		yourself