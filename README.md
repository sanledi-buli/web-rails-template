Since Rails 4.1.x, if we want to rename the application, the only two files we need to modify are

1. **config/application.rb**

	```ruby
	module ApplicationName # <-- rename it here
	  class Application < Rails::Application
	     ...
	  end
	end
	```
2. **config/initializers/session_store.rb**

	```ruby
	Rails.application.config.session_store :cookie_store, key: '_application_name_session' # <-- rename it here
	```
	
## How its work!

1. git clone `https://github.com/sanledi-buli/web-rails-template.git` `new_application_name`
2. Rename the application name
3. Setup the application configs
4. Create database
5. bundle install