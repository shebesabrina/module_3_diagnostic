class SearchController < ApplicationController
  def index
    conn = Faraday.new(:url => 'https://developer.nrel.gov') do |faraday|
      binding.pry
      faraday.headers['X-API-KEY'] = ENV['API_KEY']
      faraday.adapter Faraday.default_adapter

      # response = JSON.parse(conn.get('/api/alt-fuel-stations/v1/nearest.format?parameters.json'))
    end
  end
end
