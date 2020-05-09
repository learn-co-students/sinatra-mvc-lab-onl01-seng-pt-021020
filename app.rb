require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do #displays from through this route
        erb :user_input
    end

    post '/piglatinize' do
        @translated_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
    
        erb :final_output
      end    
end