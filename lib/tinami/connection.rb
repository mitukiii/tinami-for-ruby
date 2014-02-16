# coding: utf-8

require 'faraday'
require 'faraday_middleware'
require 'tinami/response'

module TINAMI
  module Connection
    # @return [Faraday::Connection]
    def connection(options = {})
      default_options = {
        headers: {
          accept: 'application/xml',
          user_agent: user_agent,
        },
        proxy: proxy,
      }

      options = default_options.merge(options)

      Faraday::Connection.new(endpoint, options) do |builder|
        builder.response :raise_error
        builder.response :mashify
        builder.response :xml
        builder.request :url_encoded
        builder.adapter adapter
      end
    end
  end
end
