as yet unclassified
buildWith: aToolBuilder
	^ aToolBuilder
		build:
			(aToolBuilder pluggableWindowSpec new
				extent: self defaultExtent;
				model: self model;
				color: #transparent;
				label: 'Character Sheet';
				children:
						(OrderedCollection new
							add:
								((self attributeListSpec: aToolBuilder)
									frame: self attributeListFrame;
									yourself);
									
							add:
								((self centerColumnSpec: aToolBuilder)
									frame: self centerColumnFrame;
									yourself);
							yourself);
				yourself)