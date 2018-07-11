class SearchController < ApplicationController
  def index
    conn = Faraday.new(:url => 'https:/api/alt-fuel-stations.gov') do |faraday|
      faraday.headers['X-API-KEY'] = ENV['API_KEY']
      faraday.adapter Faraday.default_adapter

      binding.pry
      # response = JSON.parse(conn.get('/api/alt-fuel-stations/v1/nearest.format?parameters.json'))
    end
  end
end
