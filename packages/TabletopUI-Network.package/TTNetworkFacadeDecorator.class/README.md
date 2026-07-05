I am a decorator that wraps a network facade. My subclasses provide object-specific synchronization logic and hide all networking details from the objects they manage, including the handling of network identifiers and remote updates.

Instance Variables
facade:		<TTNetworkFacade>

facade
- provides the underlying networking functionality used to register objects, resolve network identifiers, and send updates to remote instances
