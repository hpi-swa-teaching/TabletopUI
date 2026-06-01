as yet unclassified
initializeLayout

	self
		changeTableLayout;
		listDirection: #topToBottom;
		cellInset: 5;
		cellSpacing: #none;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		color: (Color black alpha: 0.7).
	
	self flag: #todo. "Diese Einträge sind nur zum Testen und sollten danach wieder rausgenommen werden"
	self addEntry: 'Schwert' content: 'Erhöht den Schaden um +10 Punkte.'.
    	self addEntry: 'Heiltrank' content: 'Stellt sofort 50 Lebenspunkte wieder her.'.
    	self addEntry: 'Drache' content: 'Mächtiger Bossgegner. Anfällig gegen Eis.'.