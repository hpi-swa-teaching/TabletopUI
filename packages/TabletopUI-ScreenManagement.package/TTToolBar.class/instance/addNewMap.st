tasks
addNewMap

	| path reference form name |
	path := GSGUIUtilities chooseFileMatching: '*'.
	reference := FileSystem disk referenceTo: path.
	name := reference basename.
	reference extension caseOf: {
		['png'] -> [form := PNGReadWriter formFromFileNamed: path].
		['jpg'] -> [form := JPEGReadWriter formFromFileNamed: path]}.
	form ifNil: [^ self].
	self broadcastNewMap: form for: name