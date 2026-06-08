testing
test03BroadcastOnMapState
    manager update: #mapState.
    self assert: manager networkManager sendCount equals: 1
