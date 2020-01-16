require 'sinatra/base'
require './lib/bookmark'
# require 'whatever i called the class'

class BookmarkManager < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  post '/bookmarks' do
    p params
    Bookmark.create(url: params[:add], title: params[:title])
    # url = params['add']
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
