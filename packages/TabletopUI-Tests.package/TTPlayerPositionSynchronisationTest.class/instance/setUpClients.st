initialize-release
setUpClients

    self clients: (Array new: 2).

    1 to: 2 do: [ :i |
        | client window |
        client := TTClientSessionManager new.

        window := TTTabletopWindow openSessionless.

        client window: window model.
        window sessionManager: client.

        self clients at: i put: client
    ].