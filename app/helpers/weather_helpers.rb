# Helper methods for courses endpoint
require 'active_support/core_ext/time'

module Sinatra
    module UMDIO
        module Helpers
            def kelvin_to_celsius kelvin
                kelvin - 273.15
            end

            def kelvin_to_fahrenheit kelvin
                (kelvin_to_celsius kelvin) * 9 / 5 + 32
            end

            def wind_degree_to_direction degree
                directions = ["N", "NNE", "NE", "ENE", "E", "ESE", "SE", "SSE", "S", "SSW", "SW", "WSW", "W", "WNW", "NW", "NNW"]
                direction_index = ((degree+(360.0/16)/2)%360)/(360.0/16)
                direction_index_floored = direction_index.floor               
                directions[direction_index_floored]
            end

            def unix_epoch_to_time_string epoch
                Time.at(epoch).in_time_zone('Eastern Time (US & Canada)').to_s
            end
        end
    end
end
