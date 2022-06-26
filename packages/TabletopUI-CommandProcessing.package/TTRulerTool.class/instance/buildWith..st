initialize-release
buildWith: aToolBuilder

	^ aToolBuilder
		build:
			(aToolBuilder pluggableWindowSpec new
				extent: self defaultExtent;
				color: #red;
				label: 'Ruler Tool';
				children:
						(OrderedCollection new
							add: (aToolBuilder pluggableTextSpec new
								frame: (0 @ 0 rect: 1 @ 1);
								name: 'distance';
								model: self;
								readOnly: true;
								indicateUnacceptedChanges: false;
								getText: #distance;
								yourself);
							yourself);
				yourself).