initialize-release
loadState: aDictionary

	| state |

	self flag: 'fightingPlayers and initative doesnt load real state'.
	state := ((aDictionary at: #context) at: #gameState).
	(state = #default) ifTrue: [self changeToDefaultContext].
	(state = #fight) ifTrue: [self changeToFightContextWithFightOrder: ((aDictionary at: #context) at: #fightingPlayers).].
	(state = #initiative) ifTrue: [self changeToInitiativeContext].