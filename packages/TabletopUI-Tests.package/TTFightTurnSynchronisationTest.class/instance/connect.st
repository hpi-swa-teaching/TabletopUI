running
connect

	| participants |
	participants := {self server}, self clients.
	
	self broadcastConnectionmanagers do: [:manager | participants do: [:participant | participant networkFacade networkManager == manager ifFalse: [manager subscribers add: participant]]]