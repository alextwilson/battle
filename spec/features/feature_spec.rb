feature 'Capybara' do
  scenario "Testing infrastructure working!" do
    visit('/')
    expect(page).to have_content('Hello Battle!')
  end
end
