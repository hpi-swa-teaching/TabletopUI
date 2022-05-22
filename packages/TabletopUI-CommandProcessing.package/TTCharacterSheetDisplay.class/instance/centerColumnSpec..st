as yet unclassified
centerColumnSpec: aToolBuilder
	
	^aToolBuilder pluggablePanelSpec new
		model: model;
		"children: (OrderedCollection new
			add: ((self throwsListSpec: aToolBuilder) frame: (0 @ 0 rect: 1 @ 1));
			
			 yourself);"
			children: OrderedCollection new;
		yourself