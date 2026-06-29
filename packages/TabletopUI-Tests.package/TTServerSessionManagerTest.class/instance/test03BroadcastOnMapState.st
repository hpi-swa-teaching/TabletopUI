testing
test03BroadcastOnMapState
    manager update: #mapState.
    self assert: manager networkmanager sendCount equals: 1
