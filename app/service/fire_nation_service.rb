require 'faraday'

class FireNationService
  def list_members(search_nation)
    search_nation.gsub!('_', '+')

    get_url("api/v1/characters?affiliation=#{search_nation}")
  end

  private
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev/')
  end
end