as yet unclassified
deSerializeInt: intToDeserialize
	"de-serializes a 4-long byte array or string interpreted as little endian to an integer"

	| deserializedInt arrayToDesirialize |
	arrayToDesirialize := intToDeserialize asByteArray.
	deserializedInt := (arrayToDesirialize at: 1) + ((arrayToDesirialize at: 2) bitShift: 8) + ((arrayToDesirialize at: 3) bitShift: 16) + ((arrayToDesirialize at: 4) bitShift: 24).
	^ deserializedInt