testing
test11PropagateRollFromContext
    | alice |
    alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
    parser changeToInitiativeContext.
    parser addDependent: self.
    self contextChangePropagated: false.
    parser evaluateInput: 'roll d20' from: alice.
    self assert: self contextChangePropagated.
    self assert: parser context rolls notEmpty