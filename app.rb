require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

get '/bookmarks/new' do
  erb :'bookmarks/new'
end

post '/bookmarks' do
  Bookmark.create(url: params[:url])
  redirect '/bookmarks'
end

  run! if app_file == $0
end

=begin
url = params['url']
connection = PG.connect(dbname: 'bookmark_manager_test')
connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
redirect'/bookmarks'
=end
