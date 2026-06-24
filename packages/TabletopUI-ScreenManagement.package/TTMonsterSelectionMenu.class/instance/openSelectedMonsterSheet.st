actions
openSelectedMonsterSheet

	self selectedMonster ifNotNil: [:aTTMonster |
		TTMonsterStatBlockDisplay openWith: aTTMonster map: self map]
