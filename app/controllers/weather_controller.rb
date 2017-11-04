# weather controller
module Sinatra
module UMDIO
module Routing
module Weather
  def self.registered(app)
    require 'net/http'
    require 'date'

    api_root = 'http://api.openweathermap.org/data/2.5/weather?zip=20740'
    api_key = ENV["OWM_API_KEY"]
    api_uri = "#{api_root}&appid=#{api_key}"

    app.get '/v0/weather' do
      resp = {
        message: 'This is the weather endpoint.',
        status: 'Probably working.',
        docs: 'http://umd.io/weather/'
      }
      json resp
    end

    app.get '/v0/weather/current' do
      response = Net::HTTP.get(URI(api_uri))
      resp_json = ::JSON.parse(response)

      last_updated_timestamp = resp_json["dt"]
      weather_status = resp_json["weather"][0]["main"]  
      weather_description = resp_json["weather"][0]["description"]
      temperature_kelvin = resp_json["main"]["temp"]
      pressure = resp_json["main"]["pressure"]
      humidity = resp_json["main"]["humidity"]
      wind_speed = resp_json["wind"]["speed"]
      wind_degree = resp_json["wind"]["deg"]
      sunrise_timestamp = resp_json["sys"]["sunrise"]
      sunset_timestamp = resp_json["sys"]["sunset"]

      resp = {
        last_updated_at_timestamp: last_updated_timestamp,
        last_updated_at: unix_epoch_to_time_string(last_updated_timestamp),

        weather_status: weather_status,
        weather_description: weather_description,

        temp_k: temperature_kelvin, 
        temp_c: kelvin_to_celsius(temperature_kelvin),
        temp_f: kelvin_to_fahrenheit(temperature_kelvin),

        pressure: pressure,
        humidity: humidity,

        wind_speed: wind_speed,
        wind_degree: wind_degree,
        wind_direction: wind_degree_to_direction(wind_degree),

        sunrise_timestamp: sunrise_timestamp,
        sunrise: unix_epoch_to_time_string(sunrise_timestamp),
        sunset_timestamp: sunset_timestamp,
        sunset: unix_epoch_to_time_string(sunset_timestamp),
      }
      json resp
    end   
  end
end
end
end
end
  