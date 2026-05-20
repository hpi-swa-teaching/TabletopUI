accessing
getMapCoordinates

    ^ Dictionary new
        at: #tileCoordinates put:
            (Dictionary new
                at: #x put: self defaultTile mapCoordinates x;
                at: #y put: self defaultTile mapCoordinates y;
                yourself);

        at: #pixelCoordinates put:
            (Dictionary new
                at: #x put: self defaultTile position x;
                at: #y put: self defaultTile position y;
                yourself);

        yourself