testing
test03BroadcastOnMapState
    self manager update: #mapState.
    self assert: self manager networkmanager sendCount equals: 1
