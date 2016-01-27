shared_context 'foo should always be set to bar' do
  it 'should have the foo key set to bar' do
    expect(subject[:foo]).to eq 'bar'
  end
end
