as yet unclassified
attributeListSpec: aToolBuilder
	^ aToolBuilder pluggablePanelSpec new
		model: self;
		name: 'Attributes';
		children: (OrderedCollection new
			add: ((self attributeSpec: aToolBuilder name: 'foo') 
				frame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 0.1));
				yourself);
			 yourself);
		yourself