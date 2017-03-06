require './lib/key_value'

describe KeyValue do
  it {is_expected.to respond_to(:store).with(1).argument}
  it {is_expected.to respond_to(:retrieve).with(1).argument}

  it 'stores key and value' do
    expect(subject.store('name=user')).to eq [{"name" => "user"}]
  end

  it 'returns the value for store pair' do
    subject.store('name=user')
    expect(subject.retrieve("name")).to eq "user"
  end

end
