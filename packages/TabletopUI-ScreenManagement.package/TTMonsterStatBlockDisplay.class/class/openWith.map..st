toolbuilder
openWith: aTTMonster map: aTTMap

	^ ToolBuilder open: (self new
		monster: aTTMonster;
		map: aTTMap;
		yourself)