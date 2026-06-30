serializing
serializeInt: intToSerialize
	"serializes an integer to a little endian 4-byte string"

	| serializedInt |
	serializedInt := String new: 4.
	serializedInt at: 1 put: ((intToSerialize bitShift: 0) rem: 256) asCharacter.
	serializedInt at: 2 put: ((intToSerialize bitShift: -8) rem: 256) asCharacter.
	serializedInt at: 3 put: ((intToSerialize bitShift: -16) rem: 256) asCharacter.
	serializedInt at: 4 put: ((intToSerialize bitShift: -24) rem: 256) asCharacter.
	^ serializedInt