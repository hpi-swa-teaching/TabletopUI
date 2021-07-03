exceptions
throwOverlongNameException

	Utilities informUser: 'Names should not contain more than ', self class maximalNameLength, ' characters.'
		during: [(Delay forSeconds: 2) wait]