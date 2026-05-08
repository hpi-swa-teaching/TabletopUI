as yet unclassified
deSerializeInt: intToDeserialize
	"de-serializes a 4-long byte array interpreted as little endian to an integer"
	| deserializedInt |
	deserializedInt := (intToDeserialize at: 1 ) +
						((intToDeserialize at: 2) bitShift: 8) + 
						((intToDeserialize at: 3) bitShift: 16) + 
						((intToDeserialize at: 4) bitShift: 24).
	^ deserializedInt