error messages
displayInvalidNameLengthError

	self displayError: 'Names should not contain less than 1 or more than ', self maximalNameLength asString, ' characters.'