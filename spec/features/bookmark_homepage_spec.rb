feature 'visits homepage' do
  scenario 'returns "Here are your bookmarks"' do
    visit('/')
    expect(page).to have_content "Here are your bookmarks"
  end
end