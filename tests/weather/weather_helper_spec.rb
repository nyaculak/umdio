require_relative '../../tests/spec_helper.rb'
require_relative '../../app/helpers/weather_helpers.rb'
include Sinatra::UMDIO::Helpers

describe 'Helpers' do
  describe 'Weather' do

    describe 'kelvin_to_celsius' do
        it 'should convert correctly' do
            {
                0 => -273.15,
                1 => -272.15,
                250 => -23.15,
                273.15 => 0,
                300 => 26.85,
                400 => 126.85,
            }.each { |k,v|
                expect(kelvin_to_celsius(k)).to be_within(0.00001).of(v)
            }
        end
    end

    describe 'kelvin_to_fahrenheit' do
        it 'should convert correctly' do
            {
                0 => -459.67,
                1 => -457.87,
                250 => -9.67,
                273.15 => 32,
                300 => 80.33,
                400 => 260.33,
            }.each{ |k,v|
                expect(kelvin_to_fahrenheit(k)).to be_within(0.00001).of(v)
            }
        end
    end

    describe 'wind_degree_to_direction' do
        it 'should map [348.75, 11.25) to N' do
            [348.75, 350, 360, 0, 5, 11.24].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('N')
            }
        end

        it 'should map [11.25, 33.75) to NNE' do
            [11.25, 20, 22.5, 30, 33.74].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('NNE')
            }
        end

        it 'should map [33.75, 56.25) to NE' do
            [33.75, 40, 45, 50, 56.24].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('NE')
            }
        end

        it 'should map [56.25, 78.75) to ENE' do
            [56.25, 60, 67.5, 70, 78.74].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('ENE')
            }
        end

        it 'should map [78.75, 101.25) to E' do
            [78.75, 85, 90, 95, 101.24].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('E')
            }
        end

        it 'should map [101.25, 123.75) to ESE' do
            [101.25, 105, 112.5, 120, 123.74].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('ESE')
            }
        end

        it 'should map [123.75, 146.25) to SE' do
            [123.75, 130, 135, 140, 146.24].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('SE')
            }
        end

        it 'should map [146.25, 168.75) to SSE' do
            [146.25, 150, 157.5, 165, 168.74].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('SSE')
            }
        end

        it 'should map [168.75, 191.25) to S' do
            [168.75, 170, 180, 190, 191.24].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('S')
            }
        end

        it 'should map [191.25, 213.75) to SSW' do
            [191.25, 200, 202.5, 210, 213.74].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('SSW')
            }
        end

        it 'should map [213.75, 236.25) to SW' do
            [213.75, 220, 225, 230, 236.24].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('SW')
            }
        end

        it 'should map [236.25, 258.75) to WSW' do
            [236.25, 240, 247.5, 250, 258.74].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('WSW')
            }
        end

        it 'should map [258.75, 281.25) to W' do
            [258.75, 260, 270, 280, 281.24].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('W')
            }
        end

        it 'should map [281.25, 303.75) to WNW' do
            [281.25, 290, 292.5, 300, 303.74].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('WNW')
            }
        end

        it 'should map [303.75, 326.25) to NW' do
            [303.75, 310, 315, 320, 326.24].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('NW')
            }
        end

        it 'should map [326.25, 348.75) to NNW' do
            [326.25, 330, 337.5, 340, 348.74].each { |degree|
                expect(wind_degree_to_direction(degree)).to eq('NNW')
            }
        end
    end

  end
end
