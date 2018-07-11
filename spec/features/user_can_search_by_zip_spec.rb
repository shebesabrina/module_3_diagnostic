require 'rails_helper'

describe 'User searches a specific zip code' do
  it 'should be able to locate 10 closeste stations within 6 miles' do

  #   As a user
  # When I visit "/"
  visit '/'
  # And I fill in the search form with 80203 (Note: Use the existing search form)
  fill_in "q", with: '80203'
  # <div class="form-group search-field">
  #             <input type="text" name="q" id="q" value="Search by zip..." class="form-control">
  #             <input type="submit" name="commit" value="Locate" class="btn btn-primary" data-disable-with="Locate">
  #           </div>
  # And I click "Locate"
  click_on 'Locate'
  # Then I should be on page "/search"
  expect(current_path).to eq('/search')
  # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
  expect(page).to have_content(10)
  # And the stations should be limited to Electric and Propane
  expect(page).to have_content('Electric')
  expect(page).to have_content('Propane')
  # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
