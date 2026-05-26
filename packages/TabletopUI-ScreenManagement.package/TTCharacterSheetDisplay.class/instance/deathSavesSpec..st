toolbuilder
deathSavesSpec: aToolBuilder
	
	^aToolBuilder pluggablePanelSpec new
		model: self model;
		name: 'Death Saves';
		children: (OrderedCollection new
			add: ((self deathSavesListSpec: aToolBuilder 
				name: #defaultSuccessesLabel 
				stat: #deathSaveSuccessesString 
				callBack: #incrementDeathSaveSuccesses)
				frame: (0 @ 0 rect: 1 @ 0.28));
				
			add: ((self deathSavesListSpec: aToolBuilder 
				name: #defaultFailuresLabel 
				stat: #deathSaveFailuresString
				callBack: #incrementDeathSaveFailures)
				frame: (0 @ 0.3 rect: 1 @ 0.58));
				
			add: ((self deathSavesLabelSpec: aToolBuilder 
				name:  #defaultDeathSavesLabel 
				callBack: #resetDeathSaves)
				frame: (0 @ 0.60 rect: 1 @ 1));
			 yourself);
		yourself