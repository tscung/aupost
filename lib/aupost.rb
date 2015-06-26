require 'net/http'
require 'json'
require "aupost/version"
require "cgi"

#require "aupost/configuration"

module Aupost
  	class Client
	  	attr_accessor :aupost_key
	  	def initialize(aupost_key)
	      self.aupost_key = aupost_key
	    end

	    def domestic_postcode_search(text, state = "")

	    	call URI("#{Aupost::AUPOST_URL}/postcode/search.json?q=#{CGI.escape(text)}&state=#{CGI.escape(state)}")
	    end



	    def country(format = "json")
	    	call URI("#{Aupost::AUPOST_URL}/postage/country.json")
		end

	  	def call(uri)
	  		req = Net::HTTP::Get.new(uri)
			req['AUTH-KEY'] = @aupost_key
			Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
				return JSON.load(http.request(req).read_body)
		  	end
	  		
	  	end
	end

end
