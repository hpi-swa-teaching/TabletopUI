toolbuilder
buildActionLogListWith: builder
	
	| listSpec |
	
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		list: #actionLogList.
		
	^listSpec