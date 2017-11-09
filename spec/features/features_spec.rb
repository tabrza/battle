describe Battle, :type => :feature do
  feature '#player names' do
    scenario 'players can enter names' do
      sign_in_and_play
      expect(page).to have_content 'John vs. Doe'
    end
  end

  feature '#player hit points' do
    scenario 'players1 hit points' do
      sign_in_and_play
      expect(page).to have_content '100HP'
    end
    scenario 'players2 hit points' do
      sign_in_and_play
      expect(page).to have_content '100HP'
    end
  end

  feature '#attack' do
    scenario 'player 1 attacks player 2'  do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Doe has been attacked'
    end
    scenario 'player 2 attacks player1 on second turn'  do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Attack'
      expect(page).to have_content 'John has been attacked'
    end
    scenario 'player2 hp decreases by 10' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content '90HP'
    end
    scenario 'player1 hp decreases by 10' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Attack'
      expect(page).to have_content '90HP'
    end
    scenario 'player 2 receives lose message on 0 hp' do
      sign_in_and_play
      19.times { click_button 'Attack' }
      expect(page).to have_content 'Doe loses!'
    end
  end
end
