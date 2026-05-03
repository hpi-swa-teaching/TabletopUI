accessing
passwordSequence: aNumber

	passwordHolder ifNil: [passwordHolder := ServerPassword new].
	passwordHolder sequence: aNumber