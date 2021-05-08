toolbuilder
buildWith: builder
	
	^ builder pluggableListSpec new
		model: self;
		list: #actionLogList