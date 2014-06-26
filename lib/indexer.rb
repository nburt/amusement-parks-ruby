class Indexer

  def initialize(amusement_parks)
    @amusement_parks = amusement_parks
  end

  def by_id
    indexed_by_id = {}
    @amusement_parks.each do |park|
      indexed_by_id[park[:id]] = park
    end
    indexed_by_id
  end

  def by_country
    indexed_by_country = {}
    @amusement_parks.each do |park|
      indexed_by_country[park[:country]] ||= []
      indexed_by_country[park[:country]] << park
    end
    indexed_by_country
  end

  def by_country_and_state
    indexed_by_country_state = {}
    @amusement_parks.each do |park|
      state_country_string = create_state_country_string(park[:state], park[:country])
      indexed_by_country_state[state_country_string] ||= []
      indexed_by_country_state[state_country_string] << park
    end
    indexed_by_country_state
  end

  private

  def create_state_country_string(state, country)
    "#{state}, #{country}"
  end
end