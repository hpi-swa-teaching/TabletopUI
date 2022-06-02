toolbuilder
diceTypesPositions

	^ Dictionary new
		at: 'd4' put: (0.05 @ 0.05 rect: 0.95 @ 0.15);
		at: 'd6' put: (0.05 @ 0.15 rect: 0.95 @ 0.25);
		at: 'd8' put: (0.05 @ 0.25 rect: 0.95 @ 0.35);
		at: 'd10' put: (0.05 @ 0.35 rect: 0.95 @ 0.45);
		at: 'd12' put: (0.05 @ 0.45 rect: 0.95 @ 0.55);
		at: 'd20' put: (0.05 @ 0.55 rect: 0.95 @ 0.65);
		yourself