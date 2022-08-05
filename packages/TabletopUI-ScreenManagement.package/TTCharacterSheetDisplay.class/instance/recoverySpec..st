toolbuilder
recoverySpec: aToolBuilder 
	
	^aToolBuilder pluggablePanelSpec new
		model: self model;
		name: 'recovery';
		children: (OrderedCollection new
			add: ((self hitDiceSpec: aToolBuilder
					name: #defaultHitDiceLabel
					levelName: #defaultLevelLabel
					currentHitDice: #currentHitDiceString
					level: #levelText
					hitDieType: #hitDieTypeText
					onIncrease: #incrementHitDice
					onDecrease: #decrementHitDice)
				model: self model;
				color: #backgroundColorBaseValues;		
				frame: (0 @ 0 rect: 0.4 @ 1);
				yourself);
				
			add: ((self deathSavesSpec: aToolBuilder)
				model: self model;
				color: #backgroundColorBaseValues;		
				frame: (0.45 @ 0 rect: 1 @ 1);
				yourself);
			
			 yourself);
		yourself