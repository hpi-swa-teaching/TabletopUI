accessing
panelSpec: aToolBuilder
	
	^ aToolBuilder pluggablePanelSpec new
		name: 'Panel';
		children: (OrderedCollection new
			add: (aToolBuilder pluggableTextSpec new
				frame: (0.2 @ 0 rect: 0.5 @ 1);
				yourself);
			yourself);
		yourself