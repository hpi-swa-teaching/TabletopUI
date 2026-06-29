A TTGameScreen is instantiated after all the information has been entered in the previous screens. It is the screen where the actual game is played.
 
Instance Variables
	actionLog:		<TTActionLog>
	imageBar:		<TTImageBar>
	inputField:		<TTInputField>
	map:		<TTMap>
	monsterSelectionMenu: 		<TTMonsterSelectionMenu>
	multipanel: 		<TTMultipanel>
	playerSelectionMenu:		<TTPlayerSelectionMenu>
	tokenBar:		<TTTokenBar>
	toolBar: 		<TTToolBar>
	viewContainer: 		<TTViewContainer> 
	wiki: 		<TTWiki> 

actionLog
	- output log

imageBar
	- sidebar for background image selection

inputField
	- players can enter commands in the inputfield
	
map 
	- stores the map of the game
	
monsterSelectionMenu
	- displays available DnD monsters in a menu; players can open the stat block of the different monsters
	
multipanel
	- stores the TTMultipanel

playerSelectionMenu
	- is used to select the currently active player

tokenBar
	- sidebar to add npcs
	
toolBar
	- sidebar with on the left side
	
viewContainer		
	- container for the different views of the multipanel

wiki	
	- stores the TTWiki
