feature 'delete a bookmark' do
    scenario 'A user can delete a bookmark' do
        Bookmark.add_bookmark(url: 'http://makersacademy.com', title: 'Makers Academy')
        visit('/bookmarks')
        expect(page).to have_link('http://makersacademy.com', title: 'Makers Academy')

        first('.bookmark').click_button 'Delete'

        expect(current_path).to eq '/bookmarks'
        expect(page).not_to have_link('Makers Academy', href: 'http://makersacademy.com')
    end
end