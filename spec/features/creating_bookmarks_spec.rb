require './spec_helper'

feature 'Adding a new bookmark' do
  scenario 'a user can add a bookmark to the bookmark manager' do
    visit ('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
