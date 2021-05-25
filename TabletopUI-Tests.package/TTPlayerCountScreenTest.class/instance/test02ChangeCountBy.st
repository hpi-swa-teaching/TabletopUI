testing
test02ChangeCountBy

	playerCountScreen countText: '3'.
	playerCountScreen changeCountBy: 2.
	self assert: playerCountScreen countText equals: '5'.
	playerCountScreen changeCountBy: -3.
	self assert: playerCountScreen countText equals: '2'.
	playerCountScreen changeCountBy: -7.
	self assert: playerCountScreen countText equals: '1'