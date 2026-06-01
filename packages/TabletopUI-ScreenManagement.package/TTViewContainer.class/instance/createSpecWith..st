as yet unclassified
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableScrollPaneSpec new
		morph: self;
		borderWidth: 0;
		frame: (0.75 @ 0.1 corner: 1 @ 1);
		yourself