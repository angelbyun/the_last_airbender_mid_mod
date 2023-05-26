require 'rails_helper'

RSpec.describe FireNationFacade do
  describe "instance methods" do
    describe "#list_members" do
      it "returns the first 25 members of 97 members from the fire nation" do
        members = FireNationFacade.new.list_members("fire_nation")

        expect(members).to be_an(Array)
        expect(members.count).to eq(20)

        member_data = members.first

        expect(member_data).to be_a(FireNation)
        expect(member_data.name).to be_a(String)
        expect(member_data.name).to eq("Afiko")
        expect(member_data.photo).to be_a(String)
        expect(member_data.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
        expect(member_data.affiliation).to be_a(String)
        expect(member_data.affiliation).to eq("Fire Nation")
        expect(member_data.allies).to be_an(Array)
        expect(member_data.allies).to eq(["Fire Nation"])
        expect(member_data.enemies).to be_an(Array)
        expect(member_data.enemies).to eq(["Aang"])
      end
    end
  end
end