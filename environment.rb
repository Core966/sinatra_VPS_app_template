

class DataModel < WebApplicationSettings


  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }

  #DataMapper.setup(:default, "mysql://someuser:somepass@localhost/test_db")
  
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
  
end
