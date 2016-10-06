require 'sinatra/base'

class Webserver < Sinatra::Base
  get '/' do
    'Hello'
  end

  get '/secret' do
    'Hey, you found the secret route!'
  end

  get '/cat' do
    erb(:index)
  end

end
