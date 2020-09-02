require 'httparty'
require 'awesome_print'

url = 'http://api.open-notify.org/iss-pass.json'
query_parameters = {
  lat: 47.6062,
  #lon: 122.3321
}
seattle_iss_data = HTTParty.get(url, query: query_parameters)

if seattle_iss_data.code != 200
  raise ArgumentError.new(seattle_iss_data["reason"])
end

rise_time_array = seattle_iss_data["response"]

rise_time_array.each do |time_hash|
  p Time.strptime(time_hash["risetime"].to_s, '%s')
end
