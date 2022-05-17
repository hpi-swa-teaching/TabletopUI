as yet unclassified
attributeListSpec: aToolBuilder
	^ aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'Attributes';
		children: (OrderedCollection new
			add: ((self attributeSpec: aToolBuilder name: 'strength') 
				frame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 0.15));
				yourself);
			
			add: ((self attributeSpec: aToolBuilder name: 'bar') 
				frame: (LayoutFrame fractions: (0 @ 0.15 rect: 1 @ 0.3));
				yourself);
				
			add: ((self attributeSpec: aToolBuilder name: 'bubatz') 
				frame: (LayoutFrame fractions: (0 @ 0.3 rect: 1 @ 0.45));
				yourself);
				
			 yourself);
		yourself