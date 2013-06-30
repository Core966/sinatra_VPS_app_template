

class DataModel < WebApplicationSettings

  #Database settings

  #DataMapper.setup(:default, "mysql://someuser:somepass@localhost/test_db")
  
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }

  DataMapper.finalize

if Note.count == 0
      @note = Note.create(creator: "John Doe", name: "Default note", content: "Lorem ipsum sed aliquam.", created_at: Time.now, updated_at: Time.now)
      @note.save
end

end
