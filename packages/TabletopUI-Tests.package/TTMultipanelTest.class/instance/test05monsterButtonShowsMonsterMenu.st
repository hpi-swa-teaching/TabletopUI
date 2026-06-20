testing
test05monsterButtonShowsMonsterMenu

	| viewContainer |
	viewContainer := self multiPanel viewContainer.

	self multiPanel openMonsters.

	self assert: (viewContainer submorphs at: 1) equals: self multiPanel monsterMenu