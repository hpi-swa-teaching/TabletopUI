toolbuilder
rightColumnSpec: aToolBuilder

	^ aToolBuilder pluggablePanelSpec new
		model: self model;
		name: 'Health';
		children: (OrderedCollection new
			add: ((self itemBuffsSpec: aToolBuilder) 
				frame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 0.2));
				yourself);
			
			add: ((self hpSpec: aToolBuilder) 
				frame: (LayoutFrame fractions: (0 @ 0.2 rect: 1 @ 0.55));
				yourself);
			
			add: ((self recoverySpec: aToolBuilder) 
				frame: (LayoutFrame fractions: (0 @ 0.58 rect: 1 @ 0.75));
				yourself);
			 yourself);
		yourself