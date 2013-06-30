# example model file
class Note
  include DataMapper::Resource

  property :id,         Serial
  property :creator,    String
  property :name,       String  
  property :content,    Text
  property :created_at, DateTime
  property :updated_at, DateTime

  validates_presence_of :name, :content
end






#current time: Time.now