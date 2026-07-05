accessing
playerOfWindow

	| list |
	list := self characterAdministration players
		select: [:player |
			player name = self window owningPlayerName].
	list isEmpty
		ifTrue: [^ ' ']
		ifFalse: [^ list first]