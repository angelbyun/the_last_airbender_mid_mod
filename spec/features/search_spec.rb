require 'rails_helper'

RSpec.feature "User can search for Fire Nation members" do
  it "should show Fire nation members and their data" do
    visit root_path

    select "Fire Nation", from: :nation
    click_button "Search For Members"

    expect(current_path).to eq(search_path)
  end
end