as yet unclassified
changeTokenPosition
	
	| map token tile |
	map := self client window contents first model map.
	token:= map tokens first.
	tile:= (map tiles atRow: 2) at: 2.
	map loadToken: token at: tile.
	
	
	