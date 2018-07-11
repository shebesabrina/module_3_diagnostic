class SearchController < ApplicationController
  def index
    binding.pry
    conn = Faraday.new(:url => 'https://api/alt-fuel-stations.gov') do |faraday|
      faraday.headers['X-API-KEY'] = ENV['API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
