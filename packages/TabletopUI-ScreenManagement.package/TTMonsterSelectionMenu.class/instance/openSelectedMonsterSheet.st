actions
openSelectedMonsterSheet

	self selectedItem ifNotNil: [:aTTMonster |
		TTMonsterStatBlockDisplay openWith: aTTMonster map: self map]
	
