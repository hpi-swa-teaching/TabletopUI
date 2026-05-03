accessing
password

	passwordHolder ifNil: [passwordHolder := ServerPassword new].
	^ passwordHolder passwordFor: self	"may ask the user"