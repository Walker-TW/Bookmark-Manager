require 'sinatra/base'
# require 'whatever i called the class'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Here are your bookmarks"
  end

  run! if app_file == $0

end

