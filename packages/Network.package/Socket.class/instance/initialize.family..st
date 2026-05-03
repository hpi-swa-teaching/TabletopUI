initialize-destroy
initialize: socketType family: addressFamily
	"Initialize a new socket handle. If socket creation fails, socketHandle will be set to nil."

	family := addressFamily.
	NetNameResolver useOldNetwork ifTrue: [ ^self initialize: socketType ].
	self initializeSocketHandleUsing: [ :semaIndex :readSemaIndex :writeSemaIndex |
		self primSocketCreateNetwork: family
			type: socketType
			receiveBufferSize: DefaultReceiveBufferSize
			sendBufSize: DefaultSendBufferSize
			semaIndex: semaIndex
			readSemaIndex: readSemaIndex
			writeSemaIndex: writeSemaIndex ]