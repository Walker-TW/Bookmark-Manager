require 'sinatra/base'
require './lib/bookmark'
# require 'whatever i called the class'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Here are your bookmarks"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0

end
