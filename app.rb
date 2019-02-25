require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = [
      "http://www.makers.tech",
      "http://www.github.com",
      "http://www.youtube.com"
    ]

    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
