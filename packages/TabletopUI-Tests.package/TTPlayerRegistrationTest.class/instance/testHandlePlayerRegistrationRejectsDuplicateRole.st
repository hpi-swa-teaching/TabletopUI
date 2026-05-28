as yet unclassified
testHandlePlayerRegistrationRejectsDuplicateRole

    self registerTwoGameMasters.
    self assert: (self window hasPlayerNamed: self validPlayerName).
    self deny: (self window hasPlayerNamed: self invalidPlayerName).