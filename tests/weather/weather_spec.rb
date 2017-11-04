require_relative '../../tests/spec_helper.rb'

describe 'Weather Endpoint' do
    base_url = 'v0/weather'
    current_url = "#{base_url}/current"

    shared_examples_for 'good status' do |url|
        before {get url}
        it 'has a good response' do
            expect(last_response.status).to be == 200
            expect(last_response.body.length).to be > 1
        end
    end

    describe 'get /weather/current' do
        it_has_behavior 'good status', current_url
    end
end