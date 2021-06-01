initialization
newWithOwner: aTTTile player: aTTPlayer

	^ (super newWithOwner: aTTTile)
		ttPlayer: aTTPlayer;
		yourself