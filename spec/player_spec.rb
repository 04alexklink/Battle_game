describe Player do
  player = Player.new("Alex")

  it 'should return the player name' do
    expect(player.name).to eq("Alex")
  end
  it 'should return the player HP initialized at 60' do
    expect(player.hp).to eq(60)
  end
  
  describe '#attacked' do
    it 'should reduce the player HP by 10' do 
      expect { player.attacked }.to change { player.hp }.by(-10)
    end
  end

end