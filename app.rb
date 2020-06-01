require_relative 'config/environment'


class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    # post '/params' do
    #     erb :params
    # end

    post '/piglatinize' do
        @phrase = params[:user_phrase]
        @piglatin = PigLatinizer.new
        erb :pig_latin
    end
end