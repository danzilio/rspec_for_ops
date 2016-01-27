describe 'Hello world!' do
  it 'should say hello' do
    expect(subject).to match /Hello world/
    expect(subject).not_to match /Goodbye world/
    expect(subject).to eq 'Hello world!'
  end
end
