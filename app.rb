require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        phrase = params[:user_phrase]
        words = PigLatinizer.new
        @input = words.to_pig_latin(phrase)
        erb :pig_latin
    end
end