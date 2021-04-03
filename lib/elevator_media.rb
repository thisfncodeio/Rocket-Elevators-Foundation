# https://rapidapi.com/community/api/open-weather-map/endpoints
require 'net/http'
require 'json'

module ElevatorMedia

  class Streamer
    def self.getContent(options = {})
      city = options[:city] ||= "Tampa"
      country = options[:country] ? "%2C#{options[:country]}" : ""

      url = URI("https://community-open-weather-map.p.rapidapi.com/weather?q=#{city}#{country}&lat=0&lon=0&lang=null&units=%22metric%22%20or%20%22imperial%22")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(url)
      # request["x-rapidapi-key"] = ENV['RAPIDAPI_KEY']
      request["x-rapidapi-key"] = "5c79875105mshff840a030e58200p162034jsnfb92758ecb5c"
      request["x-rapidapi-host"] = 'community-open-weather-map.p.rapidapi.com'

      response = http.request(request)
      # puts response.read_body
      parsed_result = JSON.parse(response.read_body)
      # puts parsed_result

      return "<div>#{parsed_result['name']}</div>"
      
    end
  end

end