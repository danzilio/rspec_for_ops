describe Array do
  context 'with no elements' do
    let(:subject) { [] }
    it 'should be empty' do
      expect(subject.count).to eq 0
    end
  end

  context 'with elements' do
    let(:subject) { ['foo', 'bar', 'baz'] }
    it 'should not be empty' do
      expect(subject.count).not_to eq 0
    end
  end
end
