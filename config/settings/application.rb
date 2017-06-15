# frozen_string_literal: true

# DO NOT SET SENSITIVE DATA HERE!
# USE ENVIRONMENT VARIABLES OR 'local.rb' INSTEAD

# OVERRIDE THESE DEFAULTS IN A PROPER ENVIRONMENT CONFIGURATION FILE
# SET SENSITIVE DATA ONLY IN 'local.rb'

SimpleConfig.for :application do
  set :app_name, 'javoshare'
  set :repository_url, 'http://github.com/yasir-lateef/icare'

  set :advertising, true
  set :demo_mode, false
  set :base_url, 'localhost:3000'
  set :single_process_mode, true

  set :currency, '.00 PKR'
  set :fuel_consumption, 0.12
  set :fuel_currency, 'PKR'

  set :costs_calculation_service_link, 'http://servizi.aci.it/CKInternet/'

  set :google_analytics_id, nil
  set :google_maps_api_key, nil

  set :user_image_placeholder, 'https://fbstatic-a.akamaihd.net/rsrc.php/v2/yo/r/UlIqmHJn-SK.gif'

  group :facebook do
    set :namespace, 'JavoShare'
    set :app_id, '287362618382777'
    set :secret, '38cd0c61eecb5b8ca573e4ad70019cb1'
    set :scope, 'public_profile, publish_actions, user_birthday, user_about_me, user_education_history, user_likes, user_religion_politics, user_work_history'
    set :cache_expiry_time, 7.days
  end

  group :airbrake do
    set :project_id, nil
    set :project_key, nil
    set :host, nil
  end

  group :map do
    # defaults to Italy
    set :center, [41.87194, 12.567379999999957]
    set :zoom, 8
  end

  group :itineraries do
    # Enable this option if you want to restrict itineraries inside a geographic area
    set :geo_restricted, false
    group :bounds do
      # Island of Ischia
      set :sw, [40.69205729999999, 13.850980400000026]
      set :ne, [40.7615088, 13.966879699999936]
    end
  end

  group :mailer do
    set :from, '"Icare" <no-reply@i.care>'
    set :host, 'localhost'

    group :smtp_settings do
      set :address, 'localhost'
      set :port, 587
      set :authentication, :plain
      set :domain, 'localhost'

      set :user_name, 'test'
      set :password, 'test'
    end
  end

  group :redis do
    set :url, 'redis://127.0.0.1:6379'
  end
end
