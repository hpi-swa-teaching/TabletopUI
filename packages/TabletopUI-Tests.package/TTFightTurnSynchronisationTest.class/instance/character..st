accessing
character: aNumber

	aNumber = 1
		ifTrue: [
			^ TTCharacter new
				role: #player;
				name: 'Alice';
				yourself]
		ifFalse: [
			^ TTCharacter new
				role: #player;
				name: 'Bob';
				yourself]