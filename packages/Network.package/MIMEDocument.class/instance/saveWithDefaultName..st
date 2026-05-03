interactions
saveWithDefaultName: name
	"save the part to a file"
	| fileName |
	fileName := name ifNil: ['attachment' , Utilities dateTimeSuffix].
	(fileName includes: $.)
		ifFalse: [#(#isJpeg 'jpg' #isGif 'gif' #isPng 'png' #isPnm 'pnm')
				pairsDo: [:s :e | (self perform: s)
						ifTrue: [fileName := fileName , FileDirectory dot , e]]].
	
	fileName := Project uiManager saveFilenameRequest: 'File name for save?' translated initialAnswer: fileName.
	fileName ifNil: [^ nil].
	
	FileStream newFileNamed: fileName
		do: [:file | file nextPutAll: self asSendableBodyText]