toolbuilder
createSpecWith: aToolBuilder
	
	^ aToolBuilder pluggableListSpec new
		model: self;
		minimumWidth: 0;
		list: #actionLogList;
		yourself