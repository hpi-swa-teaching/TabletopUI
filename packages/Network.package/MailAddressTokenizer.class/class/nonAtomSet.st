class initialization
nonAtomSet
	"Create a ByteCharacterSet to ensure quick parsing of the email address string, which must be a ByteString (UTF-8 encoded)"

	^CSNonAtom ifNil: [
		CSNonAtom := CharacterSet new
			"Atom characters as defined in RFC 2822 3.2.4"
			addAll: ($A to: $Z);
			addAll: ($a to: $z);
			addAll: ($0 to: $9);
			addAll: '!#$%&''*+-/=?^_`{|}~';
			"RFC 6531 allows characters with value > 127 encoded as UTF-8, which means values between 128 and 255 may appear as part of atoms."
			addAll: ((Character value: 128) to: (Character value: 255));
			byteComplement ]