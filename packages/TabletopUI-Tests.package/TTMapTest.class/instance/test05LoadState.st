testing
test05LoadState

    self map loadState: self mapInstantiationDict.

    self map tokens do: [:token |

        self assert:
            (self map convertPixelPositionToTileCoordinates: (token defaultTile coordinates) =
                (((self characterTokenDictionary
                    at: token character name asString)
                        at: #mapPosition)
                            at: #tileCoordinates))
    ].