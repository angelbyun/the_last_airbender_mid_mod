class FireNationFacade
  def list_members(search_nation)
    service.list_members(search_nation).map do |member_data|
      FireNation.new(member_data)
    end
  end

  private
  def service
    @service ||= FireNationService.new
  end
end