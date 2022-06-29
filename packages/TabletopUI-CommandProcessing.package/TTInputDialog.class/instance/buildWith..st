toolbuilder
buildWith: aToolBuilder

	^ aToolBuilder
		build:
			(aToolBuilder pluggableWindowSpec new
				extent: self defaultExtent;
				label: self label;
				children:
						(OrderedCollection new
							add: (aToolBuilder pluggableInputFieldSpec new
								frame: (0 @ 0 rect: 1 @ 1);
								model: self model;
								indicateUnacceptedChanges: true;
								setText: self valueSelector;
								yourself);
							yourself);
				yourself).