as yet unclassified
stateInstantiationDict

^Dictionary new
    at: #map put:
        (Dictionary new
            at: #characterTokens put:
                (Dictionary new
                    at: 'n' put:
                        (Dictionary new
                            at: #character put:
                                (Dictionary new
                                    at: #role put: 'nil';
                                    at: #name put: 'n';
                                    yourself);
                            at: #mapCoordinates put:
                                (Dictionary new
                                    at: #tileCoordinates put:
                                        (Dictionary new
                                            at: #y put: 1;
                                            at: #x put: 3;
                                            yourself);
                                    at: #pixelCoordinates put:
                                        (Dictionary new
                                            at: #y put: 0;
                                            at: #x put: 100;
                                            yourself);
                                    yourself);
                            yourself);

                    at: 's' put:
                        (Dictionary new
                            at: #character put:
                                (Dictionary new
                                    at: #role put: 'nil';
                                    at: #name put: 's';
                                    yourself);
                            at: #mapCoordinates put:
                                (Dictionary new
                                    at: #tileCoordinates put:
                                        (Dictionary new
                                            at: #y put: 1;
                                            at: #x put: 4;
                                            yourself);
                                    at: #pixelCoordinates put:
                                        (Dictionary new
                                            at: #y put: 0;
                                            at: #x put: 150;
                                            yourself);
                                    yourself);
                            yourself);

                    at: 'a' put:
                        (Dictionary new
                            at: #character put:
                                (Dictionary new
                                    at: #role put: 'nil';
                                    at: #name put: 'a';
                                    yourself);
                            at: #mapCoordinates put:
                                (Dictionary new
                                    at: #tileCoordinates put:
                                        (Dictionary new
                                            at: #y put: 1;
                                            at: #x put: 2;
                                            yourself);
                                    at: #pixelCoordinates put:
                                        (Dictionary new
                                            at: #y put: 0;
                                            at: #x put: 50;
                                            yourself);
                                    yourself);
                            yourself);

                    at: 'h' put:
                        (Dictionary new
                            at: #character put:
                                (Dictionary new
                                    at: #role put: 'gamemaster';
                                    at: #name put: 'h';
                                    yourself);
                            at: #mapCoordinates put:
                                (Dictionary new
                                    at: #tileCoordinates put:
                                        (Dictionary new
                                            at: #y put: 1;
                                            at: #x put: 1;
                                            yourself);
                                    at: #pixelCoordinates put:
                                        (Dictionary new
                                            at: #y put: 0;
                                            at: #x put: 0;
                                            yourself);
                                    yourself);
                            yourself);
                    yourself);
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