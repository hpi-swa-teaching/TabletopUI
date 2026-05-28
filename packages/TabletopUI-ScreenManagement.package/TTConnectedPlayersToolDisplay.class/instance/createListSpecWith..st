toolbuilder
createListSpecWith: aToolBuilder

	^ aToolBuilder pluggableListSpec new
		model: self;
		list: #nameList;
		yourself