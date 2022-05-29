as yet unclassified
recoverySpec: aToolBuilder 
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'recovery';
		children: (OrderedCollection new
			add: ((self hitDiceSpec: aToolBuilder name: #defaultHitDiceLabel levelName: #defaultLevelLabel currentHitDice: #currentHitDiceString level: #levelText hitDieType: #hitDieTypeText onIncrease: #incrementHitDice onDecrease: #decrementHitDice)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0 @ 0 rect: 0.33 @ 1);
				yourself);
				
			add: ((self labelledAttributeSpec: aToolBuilder name: #defaultInitiativeLabel stat: #initiative)
				model: model;
				color: #backgroundColorBaseValues;		
				frame: (0.33 @ 0 rect: 0.67 @ 1);
				yourself);
			
			 yourself);
		yourself