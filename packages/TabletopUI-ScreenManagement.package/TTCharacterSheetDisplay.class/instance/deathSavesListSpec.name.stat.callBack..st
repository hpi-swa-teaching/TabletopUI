toolbuilder
deathSavesListSpec: aToolBuilder name: aNameSymbol  stat: aStatSymbol callBack: aCallBackSymbol
	
	^aToolBuilder pluggablePanelSpec new
		model: self model;
		name: aNameSymbol printString;
		children: (OrderedCollection new
			add: (aToolBuilder pluggableTextSpec new
				model: self model;
				getText: aNameSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;				
				frame: (0 @ 0 rect: 0.7 @ 1);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: self model;
				color: #backgroundColorBaseValues;
				getText: aStatSymbol;
				indicateUnacceptedChanges: false;
				frame: (0.7 @ 0 rect: 0.85 @ 1);
				readOnly: false;
				yourself);
				
			add: (aToolBuilder pluggableActionButtonSpec new
				model: self model;
				label: '+';
				action: aCallBackSymbol;
				frame: (0.85 @ 0 rect: 1 @ 1);
				yourself);
			 yourself);
		yourself