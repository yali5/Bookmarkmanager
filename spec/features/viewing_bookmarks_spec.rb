feature 'views bookmarks' do
    scenario 'user views list of bookmarks' do
        visit '/'
        expect(page).to have_content "Bookmark Manager"
    end
end

