require './lib/key_value'

describe KeyValue do

  it 'stores key and value' do
    expect(KeyValue.store('name=user')).to eq [{"name" => "user"}]
  end

  it 'returns the value for store pair' do
    KeyValue.store('name=user')
    expect(KeyValue.retrieve("name")).to eq "user"
  end
end
