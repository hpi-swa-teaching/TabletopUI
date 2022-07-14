toolbuilder
attributeSpec: aToolBuilder name: aNameSymboi modifier: aModifierSymbol stat: aStatSymbol onChange: aCallBackSymbol
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: aNameSymboi printString;
		children: (OrderedCollection new
			add: (aToolBuilder pluggableButtonSpec new
				model: model;
				label: aNameSymboi;
				color: #backgroundColorBaseValues;		
				frame: (0 @ 0 rect: 1 @ 0.2);
				action: (aNameSymboi, 'Pressed') asSymbol;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aModifierSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;
				font: (TextStyle defaultFont pointSize: 24; yourself);
				frame: (0.1 @ 0.2 rect: 0.9 @ 0.8);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableInputFieldSpec new
				model: model;
				setText: aCallBackSymbol;
				getText: aStatSymbol;
				indicateUnacceptedChanges: false;
				frame: (0.25 @ 0.6 rect: 0.75 @ 0.9);
				readOnly: false;
				yourself);
			 yourself);
		yourself