# frozen_string_literal: true

desc 'This task is called by the Heroku scheduler add-on'
task daily_charge: :environment do
  puts 'Updating amounts...'
  Player.daily_charge
  puts 'done.'
end

task request_forecast: :environment do
  puts 'Updating forecast...'
  Forecast.request_forecast
  puts 'done.'
end
