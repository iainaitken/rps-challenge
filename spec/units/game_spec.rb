require 'game'

describe Game do
  let(:kevin) { double(:player, name: "Kevin") }
  let(:computer) { double(:player, name: "Computer") }
  subject { described_class.create(kevin, computer) }

  describe '#players' do
    it 'game stores players' do
      expect(subject.player_1).to eq kevin
      expect(subject.player_2).to eq computer
    end
  end
end
