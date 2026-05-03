tools
inspectorFieldAddressFor: anInspector
	<inspectorField>
	"For valid sockets, display address information in the inspector"

	^ (anInspector newFieldForType: #decodedValues key: #decodedValues)
		name: 'socket address' translated; emphasizeName;
		valueGetter: [:object | object socketAddress];
		yourself