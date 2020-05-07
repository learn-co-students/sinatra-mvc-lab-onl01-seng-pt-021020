require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinizer'do
  @translate = PigLatinizer.new(params[:user_phrase])
   erb :results
  end
end
