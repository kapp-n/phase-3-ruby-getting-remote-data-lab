require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_reader :uri

    def initialize(url)
        @uri = URI.parse(url)
    end


    def get_response_body
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        examples = JSON.parse(self.get_response_body)
        examples
    end


end