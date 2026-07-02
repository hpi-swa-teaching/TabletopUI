error messages
displayError: aString

	[Utilities informUser: aString
		during: [(Delay forSeconds: self errorDisplayTime) wait]] fork