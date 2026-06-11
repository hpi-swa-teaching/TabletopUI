as yet unclassified
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableScrollPaneSpec new
		morph: self;
		borderWidth: 0;
		yourself