fuel
serializeToByteArray: anObject
	"Serialize an object as a byte array using FUEL.
	It returns bytes representing the serialized object."
	| stream serializer |
	stream := ByteArray new writeStream.
	serializer := FLSerializer new
		object: anObject;
		onStream: stream;
		serialize.
	^ stream contents.