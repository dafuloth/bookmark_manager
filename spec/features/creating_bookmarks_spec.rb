feature 'Add a bookmark' do

  scenario 'add "https://www.chrono.gg" to my bookmarks' do
    visit '/'

    click_button('Add Bookmark')

    fill_in('title', with: 'Chrono.gg')
    fill_in('URL', with: 'https://www.chrono.gg')

    click_button('Add')

    expect(page).to have_link('Chrono.gg', href: 'https://www.chrono.gg')
  end
end
