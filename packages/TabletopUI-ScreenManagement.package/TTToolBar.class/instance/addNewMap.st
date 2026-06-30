tasks
addNewMap

	| path reference form params name |
	path := GSGUIUtilities chooseFileMatching: '*'.
	reference := FileSystem disk referenceTo: path.
	name := reference basename.
	reference extension caseOf: {
		['png'] -> [form := PNGReadWriter formFromFileNamed: path].
		['jpg'] -> [form := JPEGReadWriter formFromFileNamed: path]}.
	form ifNil: [
		Transcript show: 'Error: invalid File Type'.
		^ self].
	"TODO: add better error messaging"
	params := Dictionary new.
	params at: 'name' put: name.
	params at: 'image' put: (TTSerializer serializeImage: form).
	self networkFacade send: #addImage: to: 'mapSelector' with: params