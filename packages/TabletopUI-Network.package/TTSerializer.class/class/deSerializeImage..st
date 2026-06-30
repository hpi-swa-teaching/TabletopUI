serializing
deSerializeImage: imageToDeserialize
	"de-serializes a base64 encoded string to an imByteSymbol"

	^ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: imageToDeserialize readStream)