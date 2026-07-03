testing
test11PropagateRollFromContext
    | alice |
    alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
    self parser contextManager changeToInitiativeContext.
    self parser networkFacade addDependent: self.
    self contextChangePropagated: false.
    self parser evaluateInput: 'roll d20' from: alice.
    self assert: self contextChangePropagated.