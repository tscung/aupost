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

		def domestic_letter_thickness
			call URI("#{Aupost::AUPOST_URL}/postage/letter/domestic/thickness.json")
		end

		def domestic_letter_weight
			call URI("#{Aupost::AUPOST_URL}/postage/letter/domestic/weight.json")
		end

		def domestic_letter_size
			call URI("#{Aupost::AUPOST_URL}/postage/letter/domestic/size.json")
		end

		def international_letter_weight
			call URI("#{Aupost::AUPOST_URL}/postage/letter/international/weight.json")
		end

		def international_parcel_weight
			call URI("#{Aupost::AUPOST_URL}/postage/parcel/international/size.json")
		end

		def domestic_parcel_weight
			call URI("#{Aupost::AUPOST_URL}/postage/parcel/domestic/weight.json")
		end

		def domestic_parcel_type
			call URI("#{Aupost::AUPOST_URL}/postage/parcel/domestic/type.json")
		end

		def domestic_parcel_type
			call URI("#{Aupost::AUPOST_URL}/postage/parcel/domestic/size.json")
		end

		def postage_letter_domestic_service
			call URI("#{Aupost::AUPOST_URL}/postage/parcel/domestic/size.json")
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
