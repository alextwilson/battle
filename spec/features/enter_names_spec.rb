feature 'form used to take player names' do
  scenario 'displays names' do
    sign_in_and_play

    expect(page).to have_content('Alex' && 'Rolocop')
  end
end
