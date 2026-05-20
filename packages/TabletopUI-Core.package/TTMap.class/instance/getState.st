accessing
getState
    | dict tokenState characterState |
    dict := Dictionary new.

    self tokens do: [:characterToken |
        characterToken ifNotNil: [
		tokenState:= characterToken getState.
		characterState:= tokenState at: #character.
            dict
                at: (characterState at: #name)
                put: tokenState
        ]
    ].

    ^ Dictionary new
        at: #characterTokens put: dict;
        yourself