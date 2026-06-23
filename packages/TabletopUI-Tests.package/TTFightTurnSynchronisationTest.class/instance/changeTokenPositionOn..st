helpers
changeTokenPositionOn: aSessionManager

	| map token tile |
	map := (self gameScreenOf: aSessionManager) map.
	token := map tokens first.
	tile := (map tiles atRow: 2) at: 2.
	tile attachTokenAndTriggerDropEvent: token