require 'stoplight'
require 'redis'

redis = Redis.new(host: ENV["REDIS"])

Stoplight::Light.default_data_store = Stoplight::DataStore::Redis.new(redis)
Stoplight::Light.default_notifiers += Array(Notifiers::Custom.new)
