require 'data_mapper'
require 'dm-postgres-adapter'

Dir["./models/*"].each {|file| require file }

DataMapper.finalize
DataMapper.setup(:default, 'postgres://admin@localhost/galactical_koans')
DataMapper.auto_migrate!

