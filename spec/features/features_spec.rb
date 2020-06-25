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
      expect(page).to have_content("Player 2 HP: 60")
    end
  end

  feature 'Player 1 attack Player 2' do
    before do
      sign_in_and_play
      click_button "Attack"
    end
    scenario 'Confirmation of attack to Player 1 after Attack' do
      expect(page).to have_content("Player 1 Attacked!")
    end
    scenario 'Player 2 HP reduced by 10' do
      expect(page).to have_content("Player 2 HP: 50")
    end
  end