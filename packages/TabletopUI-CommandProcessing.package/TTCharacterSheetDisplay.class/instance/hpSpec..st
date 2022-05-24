as yet unclassified
hpSpec: aToolBuilder 
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'itemBuffs';
		children: (OrderedCollection new
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultCurrentHPLabel stat: #currentHP)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0 @ 0 rect: 1 @ 0.5);
				yourself);
				
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultTemporaryHPLabel stat: #temporaryHP)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0 @ 0.5 rect: 1 @ 1);
				yourself);
			
			 yourself);
		yourself