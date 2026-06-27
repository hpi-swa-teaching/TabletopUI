token selection
setTokens
	
	(self characterAdministration players) withIndexDo: [ :player :index |
		player token: (self tokenList at: index)]