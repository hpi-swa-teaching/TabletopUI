as yet unclassified
throwsListSpec: aToolBuilder
	^ aToolBuilder pluggableMultiColumnListSpec new
		model: model;
		name: 'Attributes';
		list: #proficiencyLookup;
		yourself