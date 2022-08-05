toolbuilder
deathSavesLabelSpec: aToolBuilder name: aNameSymbol callBack: aCallBackSymbol
	
	^ aToolBuilder pluggablePanelSpec new
		model: self model;
		name: aNameSymbol printString;
		children: (OrderedCollection new
			add: (aToolBuilder pluggableActionButtonSpec new
				model: self model;
				label: 'RESET';
				action: aCallBackSymbol;
				frame: (0 @ 0 rect: 1 @ 0.45);
				yourself);
			
			add: (aToolBuilder pluggableTextSpec new
				model: self model;
				getText: aNameSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;				
				frame: (0 @ 0.47 rect: 1 @ 1);
				readOnly: true;
				yourself);				
			
			 yourself);
		yourself