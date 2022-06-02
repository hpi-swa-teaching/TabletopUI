as yet unclassified
hpSpec: aToolBuilder 
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'itemBuffs';
		children: (OrderedCollection new
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultCurrentHPLabel stat: #currentHP)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0.1 @ 0 rect: 0.9 @ 0.4);
				yourself);
				
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultTemporaryHPLabel stat: #temporaryHP)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0.1 @ 0.5 rect: 0.9 @ 0.9);
				yourself);
			
			 yourself);
		yourself