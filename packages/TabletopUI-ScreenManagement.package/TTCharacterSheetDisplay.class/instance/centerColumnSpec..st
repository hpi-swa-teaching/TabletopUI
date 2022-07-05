toolbuilder
centerColumnSpec: aToolBuilder
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		children: (OrderedCollection new
			add: ((self labelledAttributeSpec: aToolBuilder
				name: #defaultProficiencyLabel
				stat: #proficiencyValueString)
				frame: (0 @ 0 rect: 1 @ 0.075));
		
			add: ((self proficiencyListSpec: aToolBuilder lookup: #throwsLookup)
				frame: (0 @ 0.05 rect: 1 @ 0.28));
			
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: #defaultThrowsLabel;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;				
				frame: (0.25 @ 0.28 rect: 1 @ 0.31);
				readOnly: true;
				yourself);
			
			add: ((self proficiencyListSpec: aToolBuilder lookup: #skillsLookup)
				frame: (0 @ 0.3 rect: 1 @ 0.9));
			
			add: (aToolBuilder pluggableTextSpec new
				model: model;
				getText: #defaultSkillsLabel;
				color: #backgroundColorBaseValues;
				indicateUnacceptedChanges: false;				
				frame: (0.25 @ 0.9 rect: 1 @ 0.93);
				readOnly: true;
				yourself);
			 yourself);
		yourself