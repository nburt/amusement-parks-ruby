require_relative '../lib/amusement_park_grouper'
require 'yaml'
require 'pp'

data = YAML.load(File.read('../data/amusement_parks.yml'))
amusement_park_grouper = AmusementParkGrouper.new(data)

pp amusement_park_grouper.by_id
pp amusement_park_grouper.by_country
pp amusement_park_grouper.by_state_country