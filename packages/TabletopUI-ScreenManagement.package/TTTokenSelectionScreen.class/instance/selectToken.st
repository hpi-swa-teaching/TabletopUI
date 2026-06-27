token selection
selectToken

	| filePath |
	
	(self characterAdministration players at: self selectedIndex) isGamemaster
		ifTrue: [UIManager default inform: 'Gamemaster does not have a token.']
		ifFalse: [
			filePath := FileChooserDialog openOn: FileDirectory default pattern: '*.png' label: 'Choose character sheet file'.
	
			filePath ifNil: [ ^ self ].
			
			self tokenList at: self selectedIndex put: filePath.
			self changed: #nameList.]