describe 'Truthiness' do
  let(:subject) { true }

  it 'should behave truthy' do
    expect(subject).to be true
    expect(subject).not_to be false
  end
end
