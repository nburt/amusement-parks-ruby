class AmusementParkGrouper

  def initialize(parks)
    @parks = parks
  end

  def by_id
    hash_by_id = {}
    @parks.each do |park|
      hash_by_id[park[:id]] = park
    end
    hash_by_id
  end

  def by_country
    hash_by_country = {}
    @parks.each do |park|
      if hash_by_country[park[:country]]
        hash_by_country[park[:country]] << park
      else
        hash_by_country[park[:country]] = [park]
      end
    end
    hash_by_country
  end

  def by_state_country
    hash_by_state_country = {}
    @parks.each do |park|
      state_country = "#{park[:state]}, #{park[:country]}"
      if hash_by_state_country[state_country]
        hash_by_state_country[state_country] << park
      else
        hash_by_state_country[state_country] = [park]
      end
    end
    hash_by_state_country
  end

end