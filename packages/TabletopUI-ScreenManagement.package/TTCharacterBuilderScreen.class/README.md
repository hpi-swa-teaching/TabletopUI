In TTCharacterBuilderScreen a player can build their own character in consecutive steps.

Instance Variables
	characterIndex:		<Integer>
	choices:		<Dictionary>
	currentStep:		<Symbol>
	remainingOptions:		<Dictionary>
	selectedIndex:		<Integer>
	selectedPresets:		<Dictionary>

characterIndex
	- refers to the player whose character is built

choices
	- stores the different choices the player has already made while building

currentStep
	- the current step of the process of building the character

remainingOptions
	- stores values that can still be chosen for steps that require assignments

selectedIndex
	- index of selected option in the list

selectedPresets
	- stores preset for each character that was selected before
