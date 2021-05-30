toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableScrollPaneSpec new
		morph: self map;
		hScrollBarPolicy: #always;
		vScrollBarPolicy: #always;
		borderWidth: 0;
		yourself
	