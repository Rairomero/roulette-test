# frozen_string_literal: true

desc 'This task is called by the Heroku scheduler add-on'
task daily_charge: :environment do
  puts 'Updating feed...'
  Player.daily_charge
  puts 'done.'
end
