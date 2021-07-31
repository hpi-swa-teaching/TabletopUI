error messages
displayInvalidNameLengthError

	Utilities informUser: 'Names should not contain less than 1 or more than ', self maximalNameLength, ' characters.'
		during: [(Delay forSeconds: self errorDisplayTime) wait]