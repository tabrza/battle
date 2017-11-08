require 'battle'

feature '#homepage', :type => :feature do
  scenario 'returns testing infrastructure' do
    visit '/'
    # expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature '#player names', :type => :feature do
  scenario 'players can enter names' do
    visit '/'
    fill_in :player_1_name, with: "John"
    fill_in :player_2_name, with: "Doe"
    click_button 'Submit'
    expect(page).to have_content 'John vs. Doe'
  end
end

feature '#player hit points', :type => :feature do
  scenario 'players have hit points' do
    visit '/'
    fill_in :player_1_name, with: "John"
    fill_in :player_2_name, with: "Doe"
    click_button 'Submit'
    expect(page).to have_content 'Player 2 HP: 100'
  end
end
