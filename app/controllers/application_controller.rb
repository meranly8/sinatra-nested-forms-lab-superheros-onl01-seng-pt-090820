require 'sinatra/base'

class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      binding.pry
      team = Team.create(params)
      #binding.pry
      redirect "/teams"
    end
end
