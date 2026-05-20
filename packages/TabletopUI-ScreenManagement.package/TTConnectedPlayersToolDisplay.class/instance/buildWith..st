toolbuilder
buildWith: aToolBuilder

	^ aToolBuilder
		build:
			(aToolBuilder pluggableWindowSpec new
				extent: self defaultExtent;
				closeAction: #close;
				model: self;
				label: 'Connected Players';
				children:
						(OrderedCollection new
							add: (aToolBuilder pluggableListSpec new
								frame: (0 @ 0 rect: 1 @ 1);
								name: 'Online Players';
								model: self;
								list: #nameList;
								yourself);
							yourself);
				yourself)