baseline
baseline: spec
	"Todo: uncomment and adapt to your project"
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'TabletopUI-Core';
				package: 'TabletopUI-CommandProcessing'
                    		with: [spec requires: #('TabletopUI-Core')];
				package: 'TabletopUI-ScreenManagement'
                    		with: [spec requires: #('TabletopUI-Core')];
				package: 'TabletopUI-Tests' 
					with: [spec requires: #('TabletopUI-Core' 'TabletopUI-CommandProcessing' 'TabletopUI-ScreenManagement')];
				yourself.
			spec group: 'default' with: #('TabletopUI-Core' 'TabletopUI-CommandProcessing' 'TabletopUI-ScreenManagement' 'TabletopUI-Tests')];
			yourself