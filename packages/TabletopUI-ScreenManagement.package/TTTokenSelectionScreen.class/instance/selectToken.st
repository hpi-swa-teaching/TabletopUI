as yet unclassified
selectToken

	| fileName fullPath |
	
	((self characterAdministration players) at: selectedIndex) isGamemaster
		ifTrue: [UIManager default inform: 'Gamemaster does not have a token.']
		ifFalse: [
			fileName := StandardFileMenu oldFileFrom: FileDirectory default withPattern: '*.png'.
	
			fileName 
				ifNotNil: [fullPath := fileName directory fullNameFor: fileName name]
				ifNil: [fullPath := 'default'].
			
			self tokenList at: self selectedIndex put: fullPath.
			self changed: #nameList.]