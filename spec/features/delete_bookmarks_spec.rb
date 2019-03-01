feature 'Delete a bookmark' do
  scenario 'a bookmark is deleted' do

    visit '/bookmarks'
  
    expect(page).not_to have_link('Facebook', href: 'https://www.facebook.com')

    Bookmark.add_bookmark('https://www.facebook.com', 'Facebook')

    visit '/bookmarks'

    expect(page).to have_link('Facebook', href: 'https://www.facebook.com')

    select('Facebook', :from => :id)
    click_button('Delete Bookmark')

    expect(page).not_to have_link('Facebook', href: 'https://www.facebook.com')

  end
end