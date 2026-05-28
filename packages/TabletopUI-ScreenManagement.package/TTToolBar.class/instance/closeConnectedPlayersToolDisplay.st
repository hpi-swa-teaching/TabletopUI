tasks
closeConnectedPlayersToolDisplay

	self removeDependent: self connectedPlayersTool model.
	self connectedPlayersTool delete.	"self connectedPlayersTool nil. "
	self changed: #connectedPlayersToolButtonColor