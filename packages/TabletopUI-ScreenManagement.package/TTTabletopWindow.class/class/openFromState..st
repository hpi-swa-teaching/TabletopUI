toolbuilder
openFromState: aDictionary
	
	| window |
	window:= self new
		loadState: aDictionary; 
		yourself.
	ToolBuilder open: window.
	^window.