require_relative '../lib/bookly.rb'
require 'sinatra/base'

class Bookly::Server < Sinatra::Application

  get '/' do
  "Welcome"
  end

end