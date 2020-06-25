describe Player do
  it 'should return the player name' do
  player = Player.new("Alex")
  expect(player.name).to eq("Alex")
end
end