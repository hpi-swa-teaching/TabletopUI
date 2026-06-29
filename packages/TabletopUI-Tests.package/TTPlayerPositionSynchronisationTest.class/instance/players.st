setup
players

	^ {
		TTCharacter new
			name: 'Alice';
			role: #player.
		TTCharacter new
			name: 'Bob';
			role: #player} asOrderedCollection