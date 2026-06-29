testing
test11PropagateRollFromContext
    | alice |
    alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
    self parser changeToInitiativeContext.
    self parser addDependent: self.
    self contextChangePropagated: false.
    self parser evaluateInput: 'roll d20' from: alice.
    self assert: self contextChangePropagated.
    self assert: self parser context rolls notEmpty