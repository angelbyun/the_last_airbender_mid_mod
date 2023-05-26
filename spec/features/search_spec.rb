require 'rails_helper'

RSpec.feature "User can search for Fire Nation members" do
  it "should show Fire nation members and their data" do
    visit root_path

    select "Fire Nation", from: :nation
    click_button "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("There are 97 members who live in the Fire Nation")
    expect(page).to have_css('.member', count: 25)

    within(first('.member')) do
      within('.name') do
        expect(page).to have_content("Afiko")
      end

      within('.photo') do
        expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128']")
      end

      within('.affiliation') do
        expect(page).to have_content("Fire Nation")
      end

      within('.allies') do
        expect(page).to have_content("Fire Nation")
      end

      within('.enemies') do
        expect(page).to have_content("Aang")
      end
    end
  end
end