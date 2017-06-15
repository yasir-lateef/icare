# frozen_string_literal: true

# DO NOT SET SENSITIVE DATA HERE!
# USE ENVIRONMENT VARIABLES OR 'local.rb' INSTEAD

SimpleConfig.for :application do
  set :base_url, ENV['javoshare.herokuapp.com']
  set :single_process_mode, false

  set :google_analytics_id, ENV['GOOGLE_ANALYTICS_ID']
  set :google_maps_api_key, 'AIzaSyBaHBkrA41RPpu_LieZqggteGs8AkJGr0c'

  group :facebook do
    set :namespace, 'javoshare'
    set :app_id, '1869429803382196'
    set :secret, '69bcdd8599c70a06fc1201ec42141b27'
  end

  group :airbrake do
    set :project_id, ENV['AIRBRAKE_PROJECT_ID']
    set :project_key, ENV['AIRBRAKE_PROJECT_KEY']
    set :host, ENV['AIRBRAKE_HOST']
  end

  group :mailer do
    set :from, '"Icare" <no-reply@i.care>'
    set :host, 'heroku.com'

    group :smtp_settings do
      set :address, 'smtp.sendgrid.net'
      set :port, 587
      set :authentication, :plain
      set :domain, 'heroku.com'

      set :user_name, ENV['SENDGRID_USERNAME']
      set :password, ENV['SENDGRID_PASSWORD']
    end
  end

  group :redis do
    set :url, ENV['REDISTOGO_URL']
  end
end
