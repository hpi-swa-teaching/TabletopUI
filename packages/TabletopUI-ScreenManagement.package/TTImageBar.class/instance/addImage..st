initialize-release
addImage: params

	| form name |
	name := params at: 'name'.
	form := TTSerializer deSerializeImage: (params at: 'image').
	self images add: name -> (TTImageMorph new newForm: form).
	self changed: #imageNameList