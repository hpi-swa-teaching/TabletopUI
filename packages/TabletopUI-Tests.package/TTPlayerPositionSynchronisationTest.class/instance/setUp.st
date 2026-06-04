as yet unclassified
setUp

    | upstreamConnectionManager downstreamConnectionManager |

    self
        setUpServer;
        setUpClients.

    self clients do: [ :client |
        upstreamConnectionManager := (TTUpstreamMockConnector new)
            server: self server;
            client: client;
            yourself.
	self client networkmanager: upstreamConnectionManager.
    ].
	downstreamConnectionManager := (TTDownstreamMockConnector new)
            server: self server;
            client: self clients first;
            yourself.
	self server networkmanager: downstreamConnectionManager.