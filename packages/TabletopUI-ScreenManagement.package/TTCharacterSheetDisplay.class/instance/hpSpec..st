toolbuilder
hpSpec: aToolBuilder 
	
	^aToolBuilder pluggablePanelSpec new
		model: self model;
		name: 'itemBuffs';
		children: (OrderedCollection new
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultCurrentHPLabel stat: #currentHP)
				model: self model;
				color: #backgroundColorBaseValues;		
				frame: (0.0 @ 0 rect: 0.6 @ 0.4);
				yourself);
				
			add: (aToolBuilder pluggableButtonSpec new
				model: self model;
				label: #addHPLabel;
				action: #openAddHPDialog;
				frame: (0.6 @ 0.1 rect: 1.0 @ 0.3);
				yourself);
				
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultTemporaryHPLabel stat: #temporaryHP)
				model: self model;
				color: #backgroundColorBaseValues;		
				frame: (0.0 @ 0.4 rect: 0.6 @ 0.8);
				yourself);
				
			add: (aToolBuilder pluggableButtonSpec new
				model: self model;
				label: #addTempHPLabel;
				action: #openAddTempDialog;
				frame: (0.6 @ 0.5 rect: 1.0 @ 0.7);
				yourself);
				
			add: (aToolBuilder pluggableButtonSpec new
				model: self model;
				label: #takeDamageLabel;
				action: #openTakeDamageDialog;
				frame: (0.15 @ 0.85 rect: 0.85 @ 0.95);
				yourself);
			 yourself);
		yourself