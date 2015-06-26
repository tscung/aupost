require 'net/http'
require 'json'
require "aupost/version"

#require "aupost/configuration"

module Aupost
  class Client
  	attr_accessor :aupost_key
  	def initialize(aupost_key)
      self.aupost_key = aupost_key
    end

    def domestic_postcode_search(text, state = "", format = "json")
    	uri = URI("#{Aupost::AUPOST_URL}/postcode/search.#{format}?q=#{text}&state=#{state}")
		req = Net::HTTP::Get.new(uri)
		req['AUTH-KEY'] = @aupost_key
		Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
	  		return  http.request(req).read_body.to_json
	  	end
	  	
    end

    def country(format = "json")
    	uri = URI("#{Aupost::AUPOST_URL}/postage/country.#{format}")
		req = Net::HTTP::Get.new(uri)
		req['AUTH-KEY'] = @aupost_key
		Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
	  		return  http.request(req).read_body.to_json
	  	end
    end

  end
end
