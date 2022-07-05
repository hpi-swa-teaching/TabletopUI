toolbuilder
hitDiceSpec: aToolBuilder name: aNameSymbol levelName: aLevelNameSymbol currentHitDice: aCurrentHitDiceSymbol level: aLevelSymbol hitDieType: aDieSymbol onIncrease: anIncreaseSymbol onDecrease: aDecreaseSymbol
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: aNameSymbol printString;
		children: (OrderedCollection new
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aLevelNameSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;				
				frame: (0 @ 0 rect: 0.5 @ 0.2);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aLevelSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;
				font: (TextStyle defaultFont pointSize: 24; yourself);
				frame: (0.7 @ 0 rect: 1 @ 0.2);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aCurrentHitDiceSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;
				frame: (0 @ 0.2 rect: 1 @ 0.6);
				readOnly: true;
				yourself);
			
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aNameSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;
				frame: (0 @ 0.6 rect: 1 @ 0.8);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableActionButtonSpec new
				model: model;
				label: '+';
				action: anIncreaseSymbol;
				frame: (0 @ 0.8 rect: 0.25 @ 1);
				yourself);
				
			add: (aToolBuilder pluggableActionButtonSpec new
				model: model;
				label: '-';
				action: aDecreaseSymbol;
				frame: (0.35 @ 0.8 rect: 0.6 @ 1);
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aDieSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;
				frame: (0.7 @ 0.8 rect: 1 @ 1);
				readOnly: true;
				yourself);
			 yourself);
		yourself