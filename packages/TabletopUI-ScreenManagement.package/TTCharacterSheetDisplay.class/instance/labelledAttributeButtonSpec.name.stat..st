toolbuilder
labelledAttributeButtonSpec: aToolBuilder name: aNameSymbol stat: aStatSymbol 
	
	^aToolBuilder pluggablePanelSpec new
		model: self model;
		name: aNameSymbol printString;
		children: (OrderedCollection new
				
			add: (aToolBuilder pluggableTextSpec new
				model: self model;
				getText: aStatSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;
				font: (TextStyle defaultFont pointSize: 24; yourself);
				frame: (0.1 @ 0 rect: 0.9 @ 0.6);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableButtonSpec new
				model: self model;
				label: aNameSymbol;
				color: #backgroundColorBaseValues;		
				frame: (0 @ 0.6 rect: 1 @ 1);
				action: (aNameSymbol, 'Pressed') asSymbol;
				yourself);
			 yourself);
		yourself