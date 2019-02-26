feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'bookmarks displayed' do
    visit '/bookmarks'
    expect(page).to have_content "http://www.makers.tech"
    expect(page).to have_content "http://www.github.com"
    expect(page).to have_content "http://www.youtube.com"
  end
end
