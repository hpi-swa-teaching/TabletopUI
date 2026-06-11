as yet unclassified
setTokens
	
	(self characterAdministration players) withIndexDo: [ :player :index |
		player token: (self tokenList at: index)]