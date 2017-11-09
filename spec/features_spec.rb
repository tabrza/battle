require 'battle'

  feature '#player names', :type => :feature do
    scenario 'players can enter names' do
      sign_in_and_play
      expect(page).to have_content 'John vs. Doe'
    end
  end

  feature '#player hit points', :type => :feature do
    scenario 'players1 hit points' do
      sign_in_and_play
      expect(page).to have_content 'Player 1 HP: 100'
    end
    scenario 'players2 hit points' do
      sign_in_and_play
      expect(page).to have_content 'Player 2 HP: 100'
    end
  end

  feature '#attack', :type => :feature do
    scenario 'player 1 attacks player 2'  do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Doe Attacked'
    end
    scenario 'player2 hp decreases by 10' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Player 2 HP: 90'
    end
  end
