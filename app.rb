require 'sinatra/base'
require_relative 'lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all

    erb :'bookmarks/index'
  end

  get '/add_bookmark' do
    erb :'bookmarks/add_bookmark'
  end

  post '/add_bookmark' do
    Bookmark.add_bookmark(params[:URL])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
