private
putProjectDetailsFrom: aProject to: args 
	| projectDetails |
	projectDetails := aProject world
				valueOfProperty: #ProjectDetails
				ifAbsent: [^ self].
	""
	self flag: #todo.
	"projectname ?"
	projectDetails
		at: 'projectdescription'
		ifPresent: [:value | args at: 'description' put: {value}].
	projectDetails
		at: 'projectauthor'
		ifPresent: [:value | args at: 'author' put: {value}].
	projectDetails
		at: 'projectcategory'
		ifPresent: [:value | args at: 'category' put: {value}].
	projectDetails
		at: 'projectsubcategory'
		ifPresent: [:value | args at: 'subcategory' put: {value}].
	projectDetails
		at: 'projectkeywords'
		ifPresent: [:value | args at: 'keywords' put: {value}]