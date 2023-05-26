class FireNation
  attr_reader :name,
              :photo,
              :affiliation,
              :allies,
              :enemies

  def initialize(member_data)
    @name = member_data[:name]
    @photo = member_data[:photoUrl]
    @affiliation = member_data[:affiliation]
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
  end
end