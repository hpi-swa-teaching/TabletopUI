I am an interface for creating and managing network objects. I register newly created objects with the network system and maintain their network identifiers so that clients do not need to handle their own ids or those of remote interaction partners when applying changes across the network.

I wrap the network manager and its reference manager to provide a simpler interface for sending messages and resolving remote objects.

Instance Variables
networkManager:		<TTNetworkManager>

networkManager
- manages network communication and maintains the reference manager used to assign and resolve network object identifiers
