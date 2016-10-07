require 'sinatra/base'

class Webserver < Sinatra::Base
  get '/' do
    'Hello'
  end

  get '/secret' do
    'Hey, you found the secret route!'
  end

  get '/random-cat' do
    @name = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
  end

  post '/named-cat' do
    p params
    @name = params[:name]
    erb(:named_cat)
  end

  get '/cat-form' do
    erb :cat_form
  end

end
