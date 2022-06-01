as yet unclassified
rightColumnSpec: aToolBuilder
	^ aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'Health';
		children: (OrderedCollection new
			add: ((self itemBuffsSpec: aToolBuilder) 
				frame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 0.2));
				yourself);
			
			add: ((self hpSpec: aToolBuilder) 
				frame: (LayoutFrame fractions: (0 @ 0.2 rect: 1 @ 0.4));
				yourself);
			
			add: ((self recoverySpec: aToolBuilder) 
				frame: (LayoutFrame fractions: (0 @ 0.43 rect: 1 @ 0.6));
				yourself);
			
			 yourself);
		yourself