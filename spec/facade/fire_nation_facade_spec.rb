require 'rails_helper'

RSpec.describe FireNationFacade do
  describe "instance methods" do
    describe "#list_members" do
      it "returns the first 25 members of 97 members from the fire nation" do
        members = FireNationFacade.new.list_members("fire_nation")

        expect(members).to be_an(Array)
        expect(members.count).to eq(25)

        member_data = members.first

        expect(member_data).to be_a(FireNation)
        expect(member_data.name).to be_a(String)
        expect(member_data.name).to eq("Chan (Fire Nation admiral)")
        expect(member_data.affiliation).to be_a(String)
        expect(member_data.affiliation).to eq("Fire Nation Navy")
        expect(member_data.allies).to be_an(Array)
        expect(member_data.allies).to eq(["Ozai"])
        expect(member_data.enemies).to be_an(Array)
        expect(member_data.enemies).to eq(["Earth Kingdom"])
      end
    end
  end
end