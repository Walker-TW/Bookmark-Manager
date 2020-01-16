feature 'Adds a bookmark' do
  scenario 'Adding a website to /bookmarks' do
    visit('/')
    fill_in :add, with: "http://www.thrasher.com"
    click_button "Create Bookmark!"
    expect(page).to have_content "http://www.thrasher.com"
  end
end
