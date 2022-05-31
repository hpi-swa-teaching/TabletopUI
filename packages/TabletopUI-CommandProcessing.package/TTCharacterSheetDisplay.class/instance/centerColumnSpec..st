as yet unclassified
centerColumnSpec: aToolBuilder
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		children: (OrderedCollection new
			add: ((self proficiencyListSpec: aToolBuilder lookup: #throwsLookup) frame: (0 @ 0 rect: 1 @ 0.25));
			
			add: ((self proficiencyListSpec: aToolBuilder lookup: #skillsLookup) frame: (0 @ 0.25 rect: 1 @ 1));
			
			 yourself);
		yourself