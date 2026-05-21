initialize
newWithPlayerList: aPlayerList
	
	^self new
		nameList: aPlayerList;
		aboutToBeClosed: false;
		yourself