as yet unclassified
changeTokenPositionOn: object
	
	| map token tile |
	map := object window contents first model map.
	token:= map tokens first.
	tile:= (map tiles atRow: 2) at: 2.
	map loadToken: token at: tile.
	
	
	