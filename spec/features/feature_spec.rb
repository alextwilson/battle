feature 'Capybara' do
  scenario "Should check content of homepage" do
    visit('/')
    expect(page).to have_content('Hello Battle!')
  end
end
