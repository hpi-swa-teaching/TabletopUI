primitives
primSocketReceiveDataAvailable: socketID
	"Answer if data may be available for reading from the current socket."

	<primitive: 'primitiveSocketReceiveDataAvailable' module: 'SocketPlugin' error: ec>
	self primitiveFailed
