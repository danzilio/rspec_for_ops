require 'shared_contexts/hash_contexts'

describe Hash do
  let(:subject) {{ :foo => 'bar', :baz => baz_val }}
  let(:baz_val) { nil }

  include_context 'foo should always be set to bar'

  it 'should have the baz key set to nil' do
    expect(subject[:baz]).to be nil
  end

  context 'with baz_val set to qux' do
    let(:baz_val) { 'qux' }
    include_context 'foo should always be set to bar'
    it 'should have the baz key set to qux' do
      expect(subject[:baz]).to eq 'qux'
    end
  end

  context 'with baz_val set to quux' do
    let(:baz_val) { 'quux' }
    include_context 'foo should always be set to bar'
    it 'should have the baz key set to quux' do
      expect(subject[:baz]).to eq 'quux'
    end
  end
end
