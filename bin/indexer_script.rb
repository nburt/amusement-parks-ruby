require_relative '../lib/indexer'
require 'yaml'

data = YAML.load_file('../data/amusement_parks.yml')

indexer = Indexer.new(data)

p indexer.by_id
p indexer.by_country
p indexer.by_country_and_state