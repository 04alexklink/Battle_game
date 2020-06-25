def sign_in_and_play
  visit('/')
  fill_in :First_Player_Name, :with => "Alex"
  fill_in :Second_Player_Name, :with => "Adam"
  click_button "Submit"
end