as yet unclassified
attributeListSpec: aToolBuilder
	^ aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'Attributes';
		children: (OrderedCollection new
			add: ((self attributeSpec: aToolBuilder name: #defaultStrengthText modifier: #strengthModifier stat: #strength) 
				frame: (LayoutFrame fractions: (0 @ 0 rect: 1 @ 0.15));
				yourself);
			
			add: ((self attributeSpec: aToolBuilder name: #defaultStrengthText modifier: #strengthModifier stat: #strength) 
				frame: (LayoutFrame fractions: (0 @ 0.15 rect: 1 @ 0.3));
				yourself);
				
			add: ((self attributeSpec: aToolBuilder name: #defaultStrengthText modifier: #strengthModifier stat: #strength) 
				frame: (LayoutFrame fractions: (0 @ 0.3 rect: 1 @ 0.45));
				yourself);
				
			add: ((self attributeSpec: aToolBuilder name: #defaultStrengthText modifier: #strengthModifier stat: #strength) 
				frame: (LayoutFrame fractions: (0 @ 0.45 rect: 1 @ 0.6));
				yourself);
			
			add: ((self attributeSpec: aToolBuilder name: #defaultStrengthText modifier: #strengthModifier stat: #strength) 
				frame: (LayoutFrame fractions: (0 @ 0.6 rect: 1 @ 0.75));
				yourself);
				
			add: ((self attributeSpec: aToolBuilder name: #defaultStrengthText modifier: #strengthModifier stat: #strength) 
				frame: (LayoutFrame fractions: (0 @ 0.75 rect: 1 @ 0.9));
				yourself);
			
			 yourself);
		yourself