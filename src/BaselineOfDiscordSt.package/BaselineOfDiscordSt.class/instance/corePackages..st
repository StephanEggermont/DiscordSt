private
corePackages: spec
	spec for: #'common' do: [
		spec
			package: #'Discord-Announcements';

			package: #'Discord-Core' with: [
				spec requires: #( #'ExternalVolatileStore' ). ];
			package: #'Discord-Core-Tests' with: [
				spec requires: #( #'Discord-Core' ). ];

			package: #'Discord-WebhookClient' with: [
				spec requires: #( #'Discord-Core' ). ];
			package: #'Discord-WebhookClient-Tests' with: [
				spec requires: #( #'Discord-WebhookClient' #'Discord-Core-Tests' ). ];

			package: #'Discord-Client' with: [
				spec requires: #( 
					#'Discord-Announcements' #'Discord-Core' #'Discord-Gateway' 
				 #'ExternalVolatileStore' ). ];
			package: #'Discord-Client-Tests' with: [
				spec requires: #( #'Discord-Client' #'Discord-Core-Tests' #'Discord-Gateway-Tests' ). ];

			package: #'Discord-Gateway' with: [
				spec requires: #( #'Discord-Announcements' #'Discord-Core' ). ];
			package: #'Discord-Gateway-Tests' with: [
				spec requires: #( #'Discord-Gateway' #'Discord-Core-Tests' ). ]
	].