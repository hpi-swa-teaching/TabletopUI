turnorder
updatePlayerDisplay

	| context playerList player|
	context := self inputField context.
	context gameState = #fight
	ifTrue: [
		playerList := self fightersToDisplay: context.
		player := context currentPlayer]
	ifFalse: [
		playerList := self charactersToDisplay.
		player := self playerSelectionMenu currentPlayer].
	self playerSelectionMenu
		updatePlayerListWith: playerList;
		updatePlayer: player