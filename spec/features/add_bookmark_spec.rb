feature 'Adds a bookmark' do
  scenario 'Adding a website to /bookmarks' do
    visit('/')
    fill_in :add, with: "http://www.thrasher.com"
    fill_in :title, with: "The worst magazine ever"
    click_button "Create Bookmark!"
    expect(page).to have_content "The worst magazine ever"
  end
end
