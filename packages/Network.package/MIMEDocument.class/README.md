a MIME object, along with its type and the URL it was found at (if any)

Design decisions:
- The API for using the content of the MIME object inside Squeak returns Strings 
in Squeak encoding. The serializing methods return the content serialized according 
to the content-type and content-transfer-encoding --pre