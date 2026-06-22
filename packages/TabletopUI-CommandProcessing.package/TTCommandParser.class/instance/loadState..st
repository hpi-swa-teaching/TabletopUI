initialize-release
loadState: aDictionary

    | state contextDict fightingNames fakeCharacters rollsDict fightContext currentPlayerName |

    self flag: 'characters are reconstructed from names with #player role; full restoration would require looking them up by name in the character administration'.
    contextDict := aDictionary at: TTGameStateKeys keyContext.
    state := (contextDict at: TTGameStateKeys keyGameState) asSymbol.

    state = #default ifTrue: [
        self applyContextWithoutNotifying: (TTDefaultContext new
            parser: self;
            yourself)].
    state = #fight ifTrue: [
        fightingNames := contextDict at: TTGameStateKeys keyFightingPlayerNames ifAbsent: [#()].
        fakeCharacters := (fightingNames collect: [:aName |
            TTCharacter newWithName: aName role: TTCharacter player]) asOrderedCollection.
        fakeCharacters isEmpty ifFalse: [
            fightContext := (TTFightContext newWithfightOrder: fakeCharacters) parser: self.
            currentPlayerName := contextDict at: TTGameStateKeys keyCurrentPlayer ifAbsent: [nil].
            currentPlayerName ifNotNil: [
                fightContext currentPlayer: (fakeCharacters
                    detect: [:each | each name = currentPlayerName]
                    ifNone: [fakeCharacters first])].
            self applyContextWithoutNotifying: fightContext]].
    state = #initiative ifTrue: [
        self applyContextWithoutNotifying: (TTInitiativeContext new
            parser: self;
            yourself).
        rollsDict := contextDict at: TTGameStateKeys keyRolls ifAbsent: [Dictionary new].
        rollsDict keysAndValuesDo: [:name :value |
            self context rolls
                add: (TTCharacter newWithName: name role: TTCharacter player) -> value]]