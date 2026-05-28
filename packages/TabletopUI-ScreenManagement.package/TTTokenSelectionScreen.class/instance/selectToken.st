as yet unclassified
selectToken

	| fileName |
	
	fileName := (StandardFileMenu oldFileFrom: FileDirectory default withPattern: '*.png') name.
	
	self tokenList at: self selectedIndex put: fileName.
	self changed: #nameList.