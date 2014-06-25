class Indexer

  def initialize(amusement_parks)
    @amusement_parks = amusement_parks
  end

  def by_id
    indexed_by_id = {}
    @amusement_parks.each do |park|
      park_hash = {
        :id => park[:id],
        :name => park[:name],
        :city => park[:city],
        :state => park[:state],
        :country => park[:country]
      }
      indexed_by_id[park[:id]] = park_hash
    end
    indexed_by_id
  end

  def by_country
    indexed_by_country = {}
    @amusement_parks.each do |park|
      country_parks = []
      park_hash = {
        :id => park[:id],
        :name => park[:name],
        :city => park[:city],
        :state => park[:state],
        :country => park[:country]
      }
      if indexed_by_country[park[:country]]
        indexed_by_country[park[:country]] << park_hash
      else
        country_parks << park_hash
        indexed_by_country[park[:country]] = country_parks
      end
    end
    indexed_by_country
  end

  def by_country_and_state
    indexed_by_country_state = {}
    @amusement_parks.each do |park|
      country_state_parks = []
      park_hash = {
        :id => park[:id],
        :name => park[:name],
        :city => park[:city],
        :state => park[:state],
        :country => park[:country]
      }
      state_country_string = create_state_country_string(park[:state], park[:country])
      if indexed_by_country_state[state_country_string]
        indexed_by_country_state[state_country_string] << park_hash
      else
        country_state_parks << park_hash
        indexed_by_country_state[state_country_string] = country_state_parks
      end
    end
    indexed_by_country_state
  end

  private

  def create_state_country_string(state, country)
    "#{state}, #{country}"
  end
end