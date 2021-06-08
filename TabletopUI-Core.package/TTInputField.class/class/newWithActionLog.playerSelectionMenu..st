initialization
newWithActionLog: aTTActionLog playerSelectionMenu: aTTPlayerSelectionMenu

	^ self new
		log: aTTActionLog;
		playerSelection: aTTPlayerSelectionMenu;
		yourself