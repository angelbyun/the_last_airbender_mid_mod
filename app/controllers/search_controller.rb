class SearchController < ApplicationController
  def index
    @view_nation = params['nation'].gsub('+', ' ').titleize
    @members = FireNationFacade.new.list_members(params['nation'])
  end
end