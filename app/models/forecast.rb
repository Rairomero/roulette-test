# frozen_string_literal: true

class Forecast < ApplicationRecord
  def self.request_forecast
    url = 'https://api.darksky.net/forecast/b8127dbf2250d1f3902484ce83d11aac/-33.440729,-70.669443?exclude=[minutely,hourly]&units=ca'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    res = JSON.parse(response)
    res['daily']['data'].each do |day|
      puts day
    end
  end
end
