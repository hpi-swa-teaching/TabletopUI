tasks
addNewMap

	| path reference form |
	path := GSGUIUtilities chooseFileMatching: '*'.
	reference := FileSystem disk referenceTo: path.
	reference extension caseOf: {
		['png'] -> [
			form := PNGReadWriter formFromFileNamed: path.
		].
		['jpg'] -> [
			form := JPEGReadWriter formFromFileNamed: path.
		].
	}.
	form ifNil: [Transcript show: 'Error: invalid File Type']. "TODO: add better error messaging"