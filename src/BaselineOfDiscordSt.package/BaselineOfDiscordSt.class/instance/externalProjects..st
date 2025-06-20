private
externalProjects: spec
	spec for: #'common' do: [
		spec    
 			baseline: 'ExternalVolatileStore' with: [ 
				spec
					repository: 'github://feenkcom/external-volatile-store/src';
					loads: #minimal ]
	].