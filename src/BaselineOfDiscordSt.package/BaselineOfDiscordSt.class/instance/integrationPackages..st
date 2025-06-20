private
integrationPackages: spec
	spec for: #'common' do: [
		spec
			package: #'Discord-Tools' with: [
				"It depends on GT-Inspector and GT-Playground that are standard tools"
				spec 
					requires: #( #'Discord-Core' ) ];
			package: #'Discord-Tools-Tests' with: [
				spec requires: #( #'Discord-Tools' ) ];

			package: #'Discord-Mock' with: [ 
				spec requires: #( #'Discord-Announcements' #'Discord-Core' ) ];
			
			package: #'Discord-Registry-Core' with: [ 
				spec requires: #( 
					#'Discord-Core' #'Discord-Client' #'Discord-Mock' ) ];
			
			package: #'Discord-Registry-Core-Tests' with: [ 
				spec requires: #( #'Discord-Registry-Core' ) ];

			package: #'Discord-Send-Items' with: [ 
				spec requires: #( 
					#'Discord-Registry-Core' #'Discord-Tools' #'Discord-WebhookClient' ) ];

			package: #'Discord-Send-Items-Tests' with: [ 
				spec requires: #( #'Discord-Send-Items' ) ];

			package: #'Discord-Integration-Core' with: [ 
				spec requires: #( 
					#'Discord-Core' #'Discord-Registry-Core' ) ];
			
			package: #'Discord-Integration-Gif' with: [ 
				spec requires: #( #'Discord-Send-Items'  ) ]


	].