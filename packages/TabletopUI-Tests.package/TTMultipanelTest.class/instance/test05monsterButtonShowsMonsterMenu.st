testing
test05monsterButtonShowsMonsterMenu

	| viewContainer |
	viewContainer := self multiPanel viewContainer.

	self multiPanel openMonsters.

	self assert: (viewContainer submorphs first) equals: self multiPanel monsterSelectionMenu