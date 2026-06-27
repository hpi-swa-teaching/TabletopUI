A TTSelectionMenu is a Model that backs a PluggableListMorph showing a named list of domain objects. It maintains the currently selected index and notifies dependents on change.

Subclasses implement items to supply the collection being listed. The superclass derives nameList (by collecting name from each item) and selectedItem (by indexing into items).

Subclasses may also override configureListMorph: to extend the list morph with additional settings such as a double-click action.

Instance Variables
	characterAdministration:		<Object>
	selectedIndex:		<Integer>

characterAdministration
	- stores information about the participating characters

selectedIndex
	- the 1-based index of the currently highlighted entry
