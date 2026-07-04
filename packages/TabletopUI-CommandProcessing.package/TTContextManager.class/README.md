I am a context manager that wraps the current game context and coordinates updates between game instances. I perform changes locally and broadcast them to all connected instances to keep the game state synchronized.

Instance Variables
context:		<TTCommandContext>

context
- the currently active game context whose state changes are managed and synchronized

