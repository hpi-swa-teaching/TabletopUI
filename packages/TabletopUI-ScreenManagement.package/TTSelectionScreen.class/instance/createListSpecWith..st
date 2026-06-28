toolbuilder
createListSpecWith: aToolBuilder

	| spec |
	spec := aToolBuilder pluggableListSpec new
		model: self;
		list: #nameList;
		getIndex: #selectedIndex;
		setIndex: #selectedIndex: ;
		yourself.
	self configureListSpec: spec.
	^ spec