running
setUp

	| map characterAdministration |
	map := TTMap newWith: {}.
	characterAdministration := TTCharacterAdministration new.
	self tokenBar: (TTTokenBar newWithMap: map characterAdministration: characterAdministration).
	self tokenBar currentName: 'Bert'