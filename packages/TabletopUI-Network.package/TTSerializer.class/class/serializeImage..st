serializing
serializeImage: imageToSerialize
	"serializes an image to a base64 encoded string"

	| bytes base64String stream |
	bytes := ByteArray new.
	stream := WriteStream on: bytes.
	stream nextPut: 2.
	"magic number which encodes that the new Squeak format is used. See Form>>fromBinaryStream:"
	imageToSerialize writeOn: stream.
	base64String := (Base64MimeConverter mimeEncodeContinue: stream contents readStream) contents.
	^ base64String