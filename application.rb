require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-aggregates'
require 'dm-migrations'
require 'haml'


class WebApplicationSettings < Sinatra::Base

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

before do
  @title = "Your application name"
  @author = "Your name"
end

#error do
#  e = request.env['sinatra.error']
#  Kernel.puts e.backtrace.join("\n")
#  'Application error'
#end

#helpers do
  # add your helpers here
#end


end

require File.join(File.dirname(__FILE__), 'environment.rb')

class WebApplicationCoreRoutes < DataModel

# root page
get '/' do
  @notes = Note.all
  haml :root
end

end