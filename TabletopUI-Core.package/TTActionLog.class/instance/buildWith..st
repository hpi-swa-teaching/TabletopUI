toolbuilder
buildWith: builder
	
	| listSpec |
	
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #actionLogList.
		
	^ listSpec