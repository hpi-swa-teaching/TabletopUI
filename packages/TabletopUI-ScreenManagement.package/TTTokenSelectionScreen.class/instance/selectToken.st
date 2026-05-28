as yet unclassified
selectToken

	| fileName fullPath |
	
	fileName := StandardFileMenu oldFileFrom: FileDirectory default withPattern: '*.png'.
	
	fileName ifNotNil: [
		fullPath := fileName directory fullNameFor: fileName name
	].
	
	self tokenList at: self selectedIndex put: fullPath.
	self changed: #nameList.