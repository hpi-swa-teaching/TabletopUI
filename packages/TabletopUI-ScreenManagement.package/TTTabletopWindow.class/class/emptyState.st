defaults and constants
emptyState
    ^Dictionary new
        at: #map put:
            (Dictionary new
                at: #characterTokens put: Dictionary new;
                yourself);
        at: #actionLog put:
            (Dictionary new
                at: #actionLogList put: #();
                yourself);
        at: #inputField put:
            (Dictionary new
                at: #parser put:
                    (Dictionary new
                        at: #context put:
                            (Dictionary new
                                at: #gameState put: 'default';
                                yourself);
                        yourself);
                yourself);
        yourself