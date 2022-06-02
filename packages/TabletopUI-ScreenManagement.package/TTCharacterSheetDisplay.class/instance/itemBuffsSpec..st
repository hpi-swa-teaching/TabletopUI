as yet unclassified
itemBuffsSpec: aToolBuilder 
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'itemBuffs';
		children: (OrderedCollection new
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultArmorClassLabel stat: #armorClass)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0 @ 0 rect: 0.33 @ 0.8);
				yourself);
				
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultInitiativeLabel stat: #initiative)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0.33 @ 0 rect: 0.67 @ 0.8);
				yourself);
				
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultSpeedLabel stat: #speed)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0.67 @ 0 rect: 1 @ 0.8);
				yourself);
			
			 yourself);
		yourself