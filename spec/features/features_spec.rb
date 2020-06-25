# feature 'Testing infrastructure' do
#     scenario 'Can run app and check page content' do
#       visit('/')
#       expect(page).to have_content 'Testing infrastructure working!'
#     end
#   end


  feature 'enter player names' do
    scenario 'can enter player names and get a page returned with names included in text' do
      visit('/')
      fill_in :First_Player_Name, :with => "Alex"
      fill_in :Second_Player_Name, :with => "Adam"
      click_button "Submit"
      expect(page).to have_content("Alex v Adam")
      end 
  end 

  feature 'display player hit points' do
    scenario 'Player 2 Hit Points displayed to Player 1' do
      visit('/')
      fill_in :First_Player_Name, :with => "Alex"
      fill_in :Second_Player_Name, :with => "Adam"
      click_button "Submit"
      expect(page).to have_content("Player 2 HP: 60")
    end
  end