require 'rails_helper'

describe 'User can search by zip' do
  it 'can locate stations within 6 mile radius' do
    visit '/'
    fill_in "q", with: 80203
    click_on 'Locate'

    expect(page).to have_content
    expect().to eq(10)
    expect(category)
  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
