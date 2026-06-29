A TTSelectionScreen is a TTScreen that presents a scrollable list of player-named entries alongside Continue and Leave buttons. It manages the selected list index and notifies dependents on change.

Subclasses implement continue and leave for navigation, and may override configureListSpec: to add a double-click action or help text to the list. Subclasses whose nameList annotates entries (e.g. with a chosen preset or token) override nameList and call super nameList for the base player-name collection.

Instance Variables
	selectedIndex: 		<Integer>

selectedIndex
	- the 1-based index of the currently highlighted list entry; never 0 or negative