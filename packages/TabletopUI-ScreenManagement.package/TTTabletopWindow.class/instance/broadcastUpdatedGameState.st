server session management
broadcastUpdatedGameState

	| stateJSON |

	stateJSON := NeoJSONWriter toString: self gameState.

	self connectionRegistry do: [ :dict |

		| connectionDetails |

		connectionDetails := dict at: #connectionDetails.

		"TODO:
		send JSON to all players"
	]