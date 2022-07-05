toolbuilder
proficiencySpec: aToolBuilder name: aNameSymbol multiplier: aMultiplierSymbol multiplierOnChange: aCallbackSymbol value: aValueSymbol
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: aNameSymbol printString;
		children: (OrderedCollection new
				
			add: (aToolBuilder pluggableInputFieldSpec new
				model: model;
				getText: aMultiplierSymbol;
				setText: aCallbackSymbol;
				indicateUnacceptedChanges: false;
				font: (TextStyle defaultFont pointSize: 24; yourself);
				frame: (0 @ 0 rect: 0.15 @ 1);
				readOnly: false;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aValueSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;				
				frame: (0.15 @ 0 rect: 0.3 @ 1);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aNameSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;				
				frame: (0.3 @ 0 rect: 1 @ 1);
				readOnly: true;
				yourself);
			 yourself);
		yourself