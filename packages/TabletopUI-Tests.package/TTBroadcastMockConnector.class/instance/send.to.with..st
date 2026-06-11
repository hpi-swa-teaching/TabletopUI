as yet unclassified
send: message to: object with: stateDict
	self subscribers do: [:subscriber | subscriber loadState: stateDict].