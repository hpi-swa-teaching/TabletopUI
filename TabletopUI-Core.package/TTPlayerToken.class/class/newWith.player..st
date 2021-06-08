initialization
newWith: aTTTile player: aTTPlayer

	^ (super newWith: aTTTile)
		ttPlayer: aTTPlayer;
		yourself