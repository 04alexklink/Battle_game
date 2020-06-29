# feature 'Testing infrastructure' do
#     scenario 'Can run app and check page content' do
#       visit('/')
#       expect(page).to have_content 'Testing infrastructure working!'
#     end
#   end


  feature 'enter player names' do
    scenario 'can enter player names and get a page returned with names included in text' do
      sign_in_and_play
      expect(page).to have_content("Alex v Adam")
      end 
  end 

  feature 'display player hit points' do
    scenario 'Player 2 Hit Points displayed to Player 1' do
      sign_in_and_play
      expect(page).to have_content("Adam HP: 60")
    end
  end

  feature 'Player 1 attack Player 2' do
    before do
      sign_in_and_play
      click_button "Attack"
    end
    scenario 'Confirmation of attack to Player 1 after Attack' do
      expect(page).to have_content("Alex attacked Adam !")
    end
    scenario 'Player 2 HP reduced by 10' do
      expect(page).to have_content("Adam HP: 50")
    end
  feature 'Switch players' do
    scenario 'at start of the game, says on screen it is player 1s turn' do
      sign_in_and_play
      expect(page).to have_content("Alex's turn")
    end
    scenario 'after play 1 has gone, switch to player 2s turn on screen' do
      sign_in_and_play
      click_button "Attack"
      expect(page).to have_content("Adam's turn")
    end
  end
end