as yet unclassified
labelledAttributeSpec: aToolBuilder name: aNameSymbol stat: aStatSymbol 
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: aNameSymbol printString;
		children: (OrderedCollection new
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aStatSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;
				font: (TextStyle defaultFont pointSize: 24; yourself);
				frame: (0.1 @ 0 rect: 0.9 @ 0.6);
				readOnly: true;
				yourself);
				
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: aNameSymbol;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;				
				frame: (0 @ 0.6 rect: 1 @ 1);
				readOnly: true;
				yourself);
			 yourself);
		yourself