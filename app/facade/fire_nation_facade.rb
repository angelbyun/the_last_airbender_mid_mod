class FireNationFacade
  def list_members(search_nation)
    list_members_data(search_nation).map do |member_data|
      FireNation.new(member_data)
    end
  end

  private
  def list_members_data(search_nation)
    @_list_members_data ||= service.list_members(search_nation).first(25)
  end

  def service
    @service ||= FireNationService.new
  end
end