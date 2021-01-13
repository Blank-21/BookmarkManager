require './spec_helper.rb'
require 'pg'

feature 'to see a list of all the bookmarks' do
  scenario 'visits the index page' do
    visit('/')
      expect(page).to have_content "Bookmark Manager"
  end
end

feature 'Viewing bookmarks' do
  scenario 'A user can see the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.makersacademy.com');")

    visit ('/bookmarks')

    expect(page).to have_content "www.google.co.uk"
    expect(page).to have_content "www.makersacademy.com"
  end
end
