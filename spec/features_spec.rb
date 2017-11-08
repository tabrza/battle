require 'battle'

feature '#homepage', :type => :feature do
  scenario 'returns testing infrastructure' do
    visit '/'
    # expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature '#player names', :type => :feature do
  scenario 'players can enter names' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Doe'
  end
end

feature '#player hit points', :type => :feature do
  scenario 'players have hit points' do
    sign_in_and_play  
    expect(page).to have_content 'Player 2 HP: 100'
  end
end
