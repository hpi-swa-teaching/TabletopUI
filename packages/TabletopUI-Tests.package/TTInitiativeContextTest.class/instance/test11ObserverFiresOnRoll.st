testing
test11ObserverFiresOnRoll
    | alice |
    alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
    self context addDependent: self.
    self contextHasChanged: false.
    self assert: (self context processRoll: 12 for: alice) isNil.
    self assert: self contextHasChanged