as yet unclassified
openPlayerNamesScreen
	
	self children: {(TTPlayerNamesScreen newWithWindow: self game: (self game)) buildWith: ToolBuilder default}.
	self changed: #children