as yet unclassified
setUpClients

    self clients: (Array new: 2).

    1 to: 2 do: [ :i |
        | client window |
        client := TTClientSessionManager new.

        window := TTTabletopWindow
            openWithAddress: ''
            tcpPort: 0.

        client window: window.
        window sessionManager: client.

        self clients at: i put: client
    ].