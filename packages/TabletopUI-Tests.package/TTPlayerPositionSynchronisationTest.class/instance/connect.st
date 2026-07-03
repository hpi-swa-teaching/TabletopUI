setup
connect

	| participants |
	participants := {self server}, self clients.
	
	self broadcastConnectionmanagers do: [:manager | participants do: [:participant | participant networkFacade networkmanager == manager ifFalse: [manager subscribers add: participant]]]