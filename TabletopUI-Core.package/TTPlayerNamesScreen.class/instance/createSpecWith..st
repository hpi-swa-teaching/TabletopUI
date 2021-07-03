toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableScrollPaneSpec new
		morph: self inputFields;
		hScrollBarPolicy: #never;
		vScrollBarPolicy: #always;
		borderWidth: 0;
		yourself