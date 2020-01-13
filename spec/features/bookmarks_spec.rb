feature 'Display bookmarks through /bookmark route' do
  scenario 'visits bookmarks and recieves back all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "Here are your bookmarks"
  end
end
