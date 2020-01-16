feature 'Display bookmarks through /bookmark route' do
  scenario 'visits bookmarks and recieves back all bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'MakersAcademy');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google');")
    
    visit('/bookmarks')
    
    expect(Bookmark.all).to include "MakersAcademy"
    expect(Bookmark.all).to include "Destroy"
    expect(Bookmark.all).to include "Google"
  end
end
