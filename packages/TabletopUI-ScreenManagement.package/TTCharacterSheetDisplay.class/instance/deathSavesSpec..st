toolbuilder
deathSavesSpec: aToolBuilder
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		name: 'Death Saves';
		children: (OrderedCollection new
			add: ((self deathSavesListSpec: aToolBuilder 
				name: #defaultSuccessesLabel 
				stat: #successfulDeathSavesString 
				callBack: #incrementSuccessfulDeathSaves)
				frame: (0 @ 0 rect: 1 @ 0.28));
				
			add: ((self deathSavesListSpec: aToolBuilder 
				name: #defaultFailuresLabel 
				stat: #failedDeathSavesString
				callBack: #incrementFailedDeathSaves)
				frame: (0 @ 0.3 rect: 1 @ 0.58));
				
			add: ((self deathSavesLabelSpec: aToolBuilder 
				name:  #defaultDeathSavesLabel 
				callBack: #resetDeathSaves)
				frame: (0 @ 0.60 rect: 1 @ 1));
			 yourself);
		yourself