accessing
role: aSymbol

	({self class gamemaster. self class npc. self class player} includes: aSymbol)
		ifFalse: [role := #player]
		ifTrue: [role := aSymbol]