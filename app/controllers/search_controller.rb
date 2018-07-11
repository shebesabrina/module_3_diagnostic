class SearchController < ApplicationController
  def index
    conn = Faraday.new(:url => 'https://api/alt-fuel-stations.gov') do |faraday|
  end
end
