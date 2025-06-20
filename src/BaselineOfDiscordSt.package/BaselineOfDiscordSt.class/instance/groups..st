private
groups: spec
	spec for: #'common' do: [
		spec			
			"Webhook"
			group: #'src-webhook' with: #( #'Discord-WebhookClient' );
			group: #'tests-webhook' with: #( #'Discord-WebhookClient-Tests' );
			group: #'webhook' with: #( #'src-webhook' #'tests-webhook' );
			
			"Bot App and User Client"
			group: #'src-client' with: #( #'Discord-Client' );
			group: #'tests-client' with: #( #'Discord-Client-Tests' );
			group: #'client' with: #( #'src-client' #'tests-client' );
			
			"core"
			group: #'src-core' with: #( #'src-webhook' #'src-client' );
			group: #'tests-core' with: #( #'tests-webhook' #'tests-client' );
			group: #'core' with: #( #'src-core' #'tests-core' );

			"Downloader"
			group: #'src-downloader' with: #( #'Discord-Downloader' #'Discord-Research' );

			"UI - Brick"
			group: #'src-ui-brick' with: #( #'Discord-UI-Brick' );
			group: #'tests-ui-brick' with: #( #'src-ui-brick' );
			group: #'ui-brick' with: #( #'src-ui-brick' #'tests-ui-brick' );
			
			"light options (no Bloc/Brick)"
			group: #'src-light' with: #( 
				#'src-core' #'src-downloader' );
			group: #'tests-light' with: #( 
				#'tests-core' #'tests-ui-morphic' );
			group: #'light' with: #( #'src-light' #'tests-light' );
			
			"full (all packages including Bloc/Brick) options"
			group: #'src-full' with: #( #'src-light' #'src-ui-brick' #'src-downloader' );
			group: #'tests-full' with: #( #'tests-light' );
			group: #'full' with: #( #'src-full' #'tests-full' );
			
			"default"
			group: #'default' with: #( #'light' #'tests' );
			group: #'tests' with: #( #'tests-light' );

			"all - without legacy code"
			group: #'all' with: #( #'full' #'tests-full' )
	].