feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'bookmarks displayed' do
    visit '/bookmarks'

    have_link('Test Bookmark', href: 'http://www.testbookmark.com')

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('Destroy All Software', href:'http://www.destroyallsoftware.com')
  end
end
