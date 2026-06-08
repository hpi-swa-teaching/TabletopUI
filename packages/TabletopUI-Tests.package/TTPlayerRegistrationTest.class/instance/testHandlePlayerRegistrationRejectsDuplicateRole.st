as yet unclassified
testHandlePlayerRegistrationRejectsDuplicateRole

    self registerTwoGameMasters.
    self assert: (self manager window hasPlayerNamed: self acceptedPlayerName).
    self deny: (self manager window hasPlayerNamed: self rejectedPlayerName).