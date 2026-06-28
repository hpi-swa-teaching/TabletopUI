testing
test12CreateListSpecWith

	| builder spec |
	
	builder := ToolBuilder default.
	spec := self screen createListSpecWith: builder.
	
	self assert: spec model equals: self screen.
	self assert: spec list equals: #nameList.
	self assert: spec getIndex equals: #selectedIndex.
	self assert: spec setIndex equals: #selectedIndex:.
	self assert: spec doubleClick equals: #doubleClicked