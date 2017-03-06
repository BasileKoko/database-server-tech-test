require 'sinatra/base'
require './lib/key_value.rb'


class ReturnMyValue < Sinatra::Base

  before do
    @key_value_instance = KeyValue.new
  end

  get '/set' do
    pair = request.query_string
    @key_value_instance.store(pair)
    erb :set
  end

get '/get' do
  key = request.query_string
  @value = @key_value_instance.retrieve(key)
  erb :get
end

end
