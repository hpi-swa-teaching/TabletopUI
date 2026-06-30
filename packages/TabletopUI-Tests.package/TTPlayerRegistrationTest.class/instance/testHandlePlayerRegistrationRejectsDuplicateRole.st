testing
testHandlePlayerRegistrationRejectsDuplicateRole

    self registerTwoGameMasters.
    self assert: (self hasPlayer: self manager window Named: self acceptedPlayerName).
    self deny: (self hasPlayer: self manager window Named:  self rejectedPlayerName).