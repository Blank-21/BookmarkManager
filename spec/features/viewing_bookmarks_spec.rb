require './spec_helper.rb'

feature 'to see a list of all the bookmarks' do
  scenario 'visits the index page' do
    visit('/')
      expect(page).to have_content "Bookmark Manager"
  end
end
