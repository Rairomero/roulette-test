# frozen_string_literal: true

class Forecast < ApplicationRecord
  def self.request_forecast
    uri = URI('https://api.darksky.net/forecast/b8127dbf2250d1f3902484ce83d11aac/-33.440729,-70.669443?exclude=[minutely,hourly]&units=ca')
    response = Net::HTTP.get(uri)
    res = JSON.parse(response)
    res['daily']['data'].each do |day|
      create_with(hot: day['temperatureHigh'] > 20)
        .find_or_create_by(date: DateTime.strptime(day['time'].to_s, '%s'))
    end
  end
end
