toolbuilder
openFromState: aDictionary
	
	| window ref |
	
	ref := TTReferenceManager new.
	window:= self new.
	window networkmanager: TTClientNetworkManager new.
	window referenceManager: ref.
	window networkmanager referenceManager: (ref).
	window networkmanager referenceManager addEntry: window forId: 'window'.
	window loadState: aDictionary; 
		yourself.
	ToolBuilder open: window.
	^window